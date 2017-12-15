.class public Landroid/sec/enterprise/BrowserPolicy;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/BrowserPolicy$BrowserSetting;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string v0, "BrowserPolicy"

    sput-object v0, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public getAutoFillSetting()Z
    .registers 5

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 84
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_14

    .line 85
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    move-result v2

    .line 90
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_b
    return v2

    .line 87
    :catch_c
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getAutoFillSetting returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_14
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public getCookiesSetting()Z
    .registers 5

    .prologue
    .line 66
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 67
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_14

    .line 68
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    move-result v2

    .line 73
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_b
    return v2

    .line 70
    :catch_c
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getCookiesSetting returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_14
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public getJavaScriptSetting()Z
    .registers 5

    .prologue
    .line 100
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 101
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_15

    .line 102
    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v2

    .line 107
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_c
    return v2

    .line 104
    :catch_d
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getJavaScriptSetting returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public getPopupsSetting()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 117
    :try_start_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 118
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_c

    .line 119
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result v2

    .line 124
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_c
    :goto_c
    return v2

    .line 121
    :catch_d
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v4, "PXY-getPopupsSetting returning default value"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method
