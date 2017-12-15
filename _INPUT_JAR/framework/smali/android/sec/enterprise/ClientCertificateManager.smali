.class public Landroid/sec/enterprise/ClientCertificateManager;
.super Ljava/lang/Object;
.source "ClientCertificateManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "ClientCertificateManager"

    sput-object v0, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliasesForPackage(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 113
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 114
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getAliasesForPackage(Ljava/lang/String;)Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 119
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return-object v2

    .line 116
    :catch_b
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "getAliasesForPackage returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_a
.end method

.method public getAliasesForWiFi()Ljava/util/List;
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
    .line 143
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 144
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 145
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getAliasesForWiFi()Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 150
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return-object v2

    .line 147
    :catch_b
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "getAliasesForWiFi returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_a
.end method

.method public getCertificateAliasesHavingPrivateKey()Ljava/util/List;
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
    .line 158
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 159
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 160
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getCertificateAliasesHavingPrivateKey()Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 166
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return-object v2

    .line 162
    :catch_b
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "getCertificateAliasesHavingPrivateKey returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_a
.end method

.method public getSlotIdForCaller(Ljava/lang/String;)J
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 74
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 75
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getSlotIdForCaller(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-wide v2

    .line 80
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return-wide v2

    .line 77
    :catch_b
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "getSlotIdForPackage returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const-wide/16 v2, -0x1

    goto :goto_a
.end method

.method public getSlotIdForPackage(Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 98
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 99
    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->getSlotIdForPackage(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-wide v2

    .line 104
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return-wide v2

    .line 101
    :catch_b
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "getSlotIdForPackage returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const-wide/16 v2, -0x1

    goto :goto_a
.end method

.method public isAccessControlMethodPassword()Z
    .registers 5

    .prologue
    .line 128
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 129
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 130
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isAccessControlMethodPassword()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 135
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 132
    :catch_b
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "isAccessControlMethodPassword returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isCCMPolicyEnabledForCaller()Z
    .registers 5

    .prologue
    .line 61
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 62
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 63
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isCCMPolicyEnabledForCaller()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 68
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 65
    :catch_b
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "isCCMPolicyEnabledForPackage returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 86
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 87
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 92
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 89
    :catch_b
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "isCCMPolicyEnabledForPackage returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method
