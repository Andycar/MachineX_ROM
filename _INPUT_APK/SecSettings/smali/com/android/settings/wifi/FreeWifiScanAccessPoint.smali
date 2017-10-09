.class public Lcom/android/settings/wifi/FreeWifiScanAccessPoint;
.super Landroid/preference/Preference;
.source "FreeWifiScanAccessPoint.java"


# static fields
.field static final DBG:Z

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field bssid:Ljava/lang/String;

.field frequency:I

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field networkId:I

.field security:I

.field ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->DBG:Z

    .line 44
    new-array v0, v2, [I

    const v3, 0x7f010003

    aput v3, v0, v1

    sput-object v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->STATE_SECURED:[I

    .line 47
    new-array v0, v1, [I

    sput-object v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->STATE_NONE:[I

    .line 49
    new-array v0, v2, [I

    const v2, 0x7f010037

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->wifi_signal_attributes:[I

    return-void

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->refresh()V

    .line 119
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->refresh()V

    .line 112
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 3
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v0, 0x3

    .line 95
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const/4 v0, 0x1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    const/4 v0, 0x2

    goto :goto_0

    .line 99
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "CCKM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 79
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 82
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

    .line 84
    goto :goto_0

    .line 87
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 88
    goto :goto_0

    .line 91
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 146
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    .line 147
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->bssid:Ljava/lang/String;

    .line 148
    invoke-static {p1}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->security:I

    .line 149
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->networkId:I

    .line 150
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mRssi:I

    .line 152
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 153
    return-void

    .line 146
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 1
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 156
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    .line 157
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->bssid:Ljava/lang/String;

    .line 158
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->frequency:I

    .line 159
    invoke-static {p1}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->security:I

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->networkId:I

    .line 162
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mRssi:I

    .line 163
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 164
    return-void
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 271
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->updateIcon(ILandroid/content/Context;)V

    .line 272
    return-void
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 256
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 258
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 260
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 208
    instance-of v2, p1, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    if-nez v2, :cond_1

    .line 209
    const/4 v0, 0x1

    .line 221
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v1, p1

    .line 211
    check-cast v1, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    .line 214
    .local v1, "other":Lcom/android/settings/wifi/FreeWifiScanAccessPoint;
    const-string v2, "rssi"

    const-string v3, "rssi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    iget v2, v1, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mRssi:I

    iget v3, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 216
    .local v0, "difference":I
    if-nez v0, :cond_0

    .line 221
    .end local v0    # "difference":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 245
    const/4 v0, -0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->updateIcon(ILandroid/content/Context;)V

    .line 172
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    .local v0, "summaryView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->notifyChanged()V

    .line 177
    return-void
.end method

.method public update(Landroid/net/wifi/WifiInfo;)V
    .locals 2
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 226
    .local v0, "reorder":Z
    :goto_0
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 227
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 228
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->refresh()V

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->notifyHierarchyChanged()V

    .line 232
    :cond_0
    return-void

    .line 225
    .end local v0    # "reorder":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_1

    move v3, v1

    :goto_0
    if-nez p1, :cond_2

    :goto_1
    xor-int v0, v3, v1

    .line 235
    .local v0, "reorder":Z
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 236
    iput-object p2, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 237
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->refresh()V

    .line 238
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->notifyHierarchyChanged()V

    .line 241
    :cond_0
    return-void

    .end local v0    # "reorder":Z
    :cond_1
    move v3, v2

    .line 234
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 181
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 188
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->wifi_signal_attributes:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 192
    .local v1, "sld":Landroid/graphics/drawable/StateListDrawable;
    if-eqz v1, :cond_2

    .line 193
    iget v2, p0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->security:I

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->STATE_SECURED:[I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 194
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 199
    .end local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 193
    .restart local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_3
    sget-object v2, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->STATE_NONE:[I

    goto :goto_1
.end method
