.class public Landroid/sec/enterprise/DeviceInventory;
.super Ljava/lang/Object;
.source "DeviceInventory.java"


# static fields
.field public static final DEVICE_INFO_DROPPED_CALL:Ljava/lang/String; = "dropped"

.field public static final DEVICE_INFO_MISSED_CALL:Ljava/lang/String; = "missed"

.field public static final DEVICE_INFO_SUCCESS_CALL:Ljava/lang/String; = "success"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "DeviceInfo"

    sput-object v0, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallsCount(Ljava/lang/String;)V
    .registers 6
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 46
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_9

    .line 47
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->addCallsCount(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 52
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_9
    :goto_9
    return-void

    .line 49
    :catch_a
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v3, "PXY-addCallsCount returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public isCallingCaptureEnabled()Z
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
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isCallingCaptureEnabled()Z
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
    sget-object v2, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isCallingCaptureEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isMMSCaptureEnabled()Z
    .registers 5

    .prologue
    .line 143
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 144
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 145
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isMMSCaptureEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 150
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 147
    :catch_b
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isMMSCaptureEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isSMSCaptureEnabled()Z
    .registers 5

    .prologue
    .line 105
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 106
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 107
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isSMSCaptureEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 112
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 109
    :catch_b
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isSMSCaptureEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "duration"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "isIncoming"    # Z

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 88
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_18

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 89
    invoke-interface/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    .line 90
    const/4 v1, 0x1

    .line 95
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_f
    return v1

    .line 92
    :catch_10
    move-exception v6

    .line 93
    .local v6, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-storeCalling returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_18
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z

    .prologue
    .line 165
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 166
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_9

    .line 167
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/sec/enterprise/IEDMProxy;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 172
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_9
    :goto_9
    return-void

    .line 169
    :catch_a
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v3, "PXY-storeMMS returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 128
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_9

    .line 129
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/sec/enterprise/IEDMProxy;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 134
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_9
    :goto_9
    return-void

    .line 131
    :catch_a
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v3, "PXY-storeSMS returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
