.class public Landroid/sec/enterprise/WifiPolicy;
.super Ljava/lang/Object;
.source "WifiPolicy.java"


# static fields
.field public static final ACTION_ENABLE_NETWORK:Ljava/lang/String; = "edm.intent.action.enable"

.field public static final ACTION_LOCK_KEYSTORE:Ljava/lang/String; = "edm.intent.action.lock"

.field public static final ENGINE_ID_SECPKCS11:Ljava/lang/String; = "secpkcs11"

.field public static final SECURITY_LEVEL_EAP_FAST:I = 0x4

.field public static final SECURITY_LEVEL_EAP_LEAP:I = 0x3

.field public static final SECURITY_LEVEL_EAP_PEAP:I = 0x5

.field public static final SECURITY_LEVEL_EAP_TLS:I = 0x7

.field public static final SECURITY_LEVEL_EAP_TTLS:I = 0x6

.field public static final SECURITY_LEVEL_NOT_SUPPORTED:I = 0x8

.field public static final SECURITY_LEVEL_OPEN:I = 0x0

.field public static final SECURITY_LEVEL_WEP:I = 0x1

.field public static final SECURITY_LEVEL_WPA:I = 0x2

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "WifiPolicy"

    sput-object v0, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netSSID"    # Ljava/lang/String;

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 197
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_9

    .line 198
    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 203
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_9
    :goto_9
    return-void

    .line 200
    :catch_a
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-edmAddOrUpdate returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public getAllowUserPolicyChanges()Z
    .registers 5

    .prologue
    .line 116
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 117
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 118
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getAllowUserPolicyChanges()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 123
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 120
    :catch_b
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getAllowUserPolicyChanges returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public getAllowUserProfiles(ZI)Z
    .registers 7
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 135
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 136
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 137
    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->getAllowUserProfiles(ZI)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 142
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 139
    :catch_b
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getAllowUserProfiles returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public getAutomaticConnectionToWifi()Z
    .registers 5

    .prologue
    .line 255
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 256
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 257
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getAutomaticConnectionToWifi()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 262
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 259
    :catch_b
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getAutomaticConnectionToWifi returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 99
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 100
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getBlockedNetworks()Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 105
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return-object v2

    .line 102
    :catch_b
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getBlockedNetworks returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_a
.end method

.method public getMinimumRequiredSecurity()I
    .registers 5

    .prologue
    .line 180
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 181
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 182
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getMinimumRequiredSecurity()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 187
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 184
    :catch_b
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getMinimumRequiredSecurity returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getNetworkSSIDList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 82
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 83
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getNetworkSSIDList()Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 88
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return-object v2

    .line 85
    :catch_b
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getNetworkSSID returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_a
.end method

.method public getPromptCredentialsEnabled()Z
    .registers 5

    .prologue
    .line 153
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 154
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 155
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getPromptCredentialsEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 160
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 157
    :catch_b
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getPromptCredentialsEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public getWifiSsidRestrictionList(I)Ljava/util/List;
    .registers 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 273
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 274
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getWifiSsidRestrictionList(I)Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 279
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return-object v2

    .line 276
    :catch_b
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getWifiSsidRestrictionList returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a
.end method

.method public isWifiStateChangeAllowed()Z
    .registers 5

    .prologue
    .line 237
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 238
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 239
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isWifiStateChangeAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 244
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 241
    :catch_b
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isWifiStateChangeAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .registers 6
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 221
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 222
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 223
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->removeNetworkConfiguration(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 228
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 225
    :catch_b
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-removeNetworkConfiguration returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method
