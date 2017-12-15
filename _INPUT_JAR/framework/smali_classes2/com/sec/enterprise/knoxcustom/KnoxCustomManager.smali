.class public Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
.super Ljava/lang/Object;
.source "KnoxCustomManager.java"


# static fields
.field public static final NOTIFICATIONS_ALL:I = 0x1f

.field public static final NOTIFICATIONS_BATTERY_FULL:I = 0x2

.field public static final NOTIFICATIONS_BATTERY_LOW:I = 0x1

.field public static final NOTIFICATIONS_NITZ_SET_TIME:I = 0x10

.field public static final NOTIFICATIONS_SAFE_VOLUME:I = 0x4

.field public static final NOTIFICATIONS_STATUS_BAR:I = 0x8

.field private static final TAG:Ljava/lang/String; = "KnoxCustomManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSealedHideNotificationMessages()I
    .registers 5

    .prologue
    .line 169
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 170
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 171
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getSealedHideNotificationMessages()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 176
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 173
    :catch_b
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManager"

    const-string v3, "PXY-getSealedHideNotificationMessages returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getSealedNotificationMessagesState()Z
    .registers 5

    .prologue
    .line 137
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 138
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_17

    .line 139
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/enterprise/IEDMProxy;->getSealedNotificationMessagesState()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 144
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_e
    return v2

    .line 141
    :catch_f
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManager"

    const-string v3, "PXY-getSealedNotificationMessagesState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    const/4 v2, 0x1

    goto :goto_e
.end method

.method public getSealedState()Z
    .registers 5

    .prologue
    .line 107
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 108
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_17

    .line 109
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/enterprise/IEDMProxy;->getSealedState()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 114
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_e
    return v2

    .line 111
    :catch_f
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManager"

    const-string v3, "PXY-getSealedState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    const/4 v2, 0x0

    goto :goto_e
.end method
