.class public Lcom/android/settings/wifi/WifiShareProfileCandidateAP;
.super Landroid/preference/Preference;
.source "WifiShareProfileCandidateAP.java"


# static fields
.field private static final STATE_SECURED:[I

.field private static count:I

.field private static wifi_signal_attributes:[I


# instance fields
.field public index:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public network:Ljava/lang/String;

.field public priority:I

.field public security:Ljava/lang/String;

.field public signalLevel:I

.field public ssid:Ljava/lang/String;

.field public timeoutIndex:I

.field private timeoutValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    sput v2, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->count:I

    .line 68
    new-array v0, v3, [I

    const v1, 0x7f010003

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->STATE_SECURED:[I

    .line 69
    new-array v0, v3, [I

    const v1, 0x7f010037

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->wifi_signal_attributes:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "index"    # Ljava/lang/String;
    .param p4, "network"    # Ljava/lang/String;
    .param p5, "priority"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->ssid:Ljava/lang/String;

    .line 50
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    .line 51
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->network:Ljava/lang/String;

    .line 52
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->priority:I

    .line 53
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    .line 54
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    .line 56
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->signalLevel:I

    .line 73
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->ssid:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    .line 76
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->network:Ljava/lang/String;

    .line 77
    move/from16 v0, p5

    iput v0, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->priority:I

    .line 78
    const v10, 0x7f0401b2

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->setWidgetLayoutResource(I)V

    .line 80
    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const-string v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 81
    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 82
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->decryptSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "ssidDecryped":Ljava/lang/String;
    const/4 v6, 0x0

    .line 86
    .local v6, "isWpaFamily":Z
    if-eqz p3, :cond_0

    .line 87
    const-string v10, "\tkey_mgmt=NONE"

    invoke-virtual {p3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "\tauth_alg=OPEN SHARED"

    invoke-virtual {p3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 89
    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v11, 0x7f0a04ab

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    .line 97
    :cond_0
    :goto_0
    if-eqz v8, :cond_9

    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, "currentLevel":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 100
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 101
    .local v7, "result":Landroid/net/wifi/ScanResult;
    if-eqz v6, :cond_3

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurityPSK(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurityPSK(Landroid/net/wifi/ScanResult;)I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    .line 102
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 103
    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v11, 0x7f0a04ac

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    .line 110
    :cond_3
    :goto_2
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->isSameSecurity(Landroid/net/wifi/ScanResult;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 111
    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    const v11, 0x7fffffff

    if-ne v10, v11, :cond_8

    const/4 v3, 0x0

    .line 112
    :goto_3
    iget v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->signalLevel:I

    if-le v3, v10, :cond_2

    iput v3, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->signalLevel:I

    goto :goto_1

    .line 90
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "currentLevel":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    const-string v10, "\tkey_mgmt=WPA-PSK"

    invoke-virtual {p3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 91
    const/4 v6, 0x1

    .line 92
    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v11, 0x7f0a04ae

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_5
    const-string v10, "\tkey_mgmt=FT-PSK"

    invoke-virtual {p3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 94
    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v11, 0x7f0a04b2

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    goto/16 :goto_0

    .line 104
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "currentLevel":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    .line 105
    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v11, 0x7f0a04ad

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    goto :goto_2

    .line 106
    :cond_7
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 107
    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v11, 0x7f0a04ae

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    goto :goto_2

    .line 111
    :cond_8
    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    const/4 v11, 0x5

    invoke-static {v10, v11}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    goto :goto_3

    .line 118
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "currentLevel":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_9
    iget-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0049

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutValues:[Ljava/lang/String;

    .line 119
    return-void
.end method

.method private decryptSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "dcyp":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 212
    .local v3, "length":I
    const-string v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    const/4 v5, 0x1

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 224
    .end local v3    # "length":I
    :cond_0
    :goto_0
    return-object v0

    .line 214
    .restart local v3    # "length":I
    :cond_1
    const/4 v5, 0x2

    if-lt v3, v5, :cond_0

    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_0

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    div-int/lit8 v5, v3, 0x2

    if-ge v2, v5, :cond_2

    .line 217
    const-string v5, "\\x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 220
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    .line 221
    .local v1, "decrypedSsid":Landroid/net/wifi/WifiSsid;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    goto :goto_0

    :cond_3
    const-string v0, "<unknown ssid>"

    goto :goto_2
.end method

.method private getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 168
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 169
    .local v0, "wpa":Z
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 171
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 172
    const/4 v2, 0x3

    .line 178
    :goto_0
    return v2

    .line 173
    :cond_0
    if-eqz v1, :cond_1

    .line 174
    const/4 v2, 0x2

    goto :goto_0

    .line 175
    :cond_1
    if-eqz v0, :cond_2

    .line 176
    const/4 v2, 0x1

    goto :goto_0

    .line 178
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSecurityPSK(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 188
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x4

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSecurityPSK(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 182
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x4

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameSecurity(Landroid/net/wifi/ScanResult;)Z
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 195
    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "FT/PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    const-string v3, "\tkey_mgmt=FT-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 198
    goto :goto_0

    .line 199
    :cond_2
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    const-string v3, "\tkey_mgmt=WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 200
    goto :goto_0

    .line 201
    :cond_3
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WEP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    const-string v3, "\tkey_mgmt=NONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    const-string v3, "\tauth_alg=OPEN SHARED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 203
    goto :goto_0
.end method

.method private updateIcon(ILandroid/widget/ImageView;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "signal"    # Landroid/widget/ImageView;

    .prologue
    .line 228
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 230
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 234
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 237
    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->wifi_signal_attributes:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 241
    .local v1, "sld":Landroid/graphics/drawable/StateListDrawable;
    if-eqz v1, :cond_2

    .line 242
    sget-object v2, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->STATE_SECURED:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 243
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 245
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    .end local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 132
    instance-of v1, p1, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    if-nez v1, :cond_0

    .line 133
    const/4 v1, 0x1

    .line 138
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 135
    check-cast v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    .line 138
    .local v0, "other":Lcom/android/settings/wifi/WifiShareProfileCandidateAP;
    iget v1, v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->priority:I

    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->priority:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->ssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->decryptSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    const v1, 0x7f1003c4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 125
    .local v0, "signal":Landroid/widget/ImageView;
    iget v1, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->signalLevel:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->updateIcon(ILandroid/widget/ImageView;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->refresh()V

    .line 127
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v1, 0x7f0a048e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public updatedNetwork()Ljava/lang/String;
    .locals 5

    .prologue
    .line 146
    const-string v1, "0"

    .line 147
    .local v1, "timeout":Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 148
    const-string v1, "0"

    .line 156
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->network:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->network:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v2, "\tshared=1\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v2, "\texpiration=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v2, "\"\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v2, "}\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 149
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    if-nez v2, :cond_2

    .line 150
    const/16 v2, 0x5460

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 151
    :cond_2
    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 152
    const v2, 0xa8c0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_3
    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 154
    const v2, 0x15180

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
