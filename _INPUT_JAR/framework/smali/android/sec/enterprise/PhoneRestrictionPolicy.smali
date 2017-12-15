.class public Landroid/sec/enterprise/PhoneRestrictionPolicy;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"


# static fields
.field public static final ACTION_PHONE_READY:Ljava/lang/String; = "edm.intent.action.PHONE_READY"

.field public static final ACTION_SEND_BLOCKED_MMS:Ljava/lang/String; = "com.android.server.enterprise.restriction.SEND_BLOCKED_MMS"

.field public static final ACTION_SEND_BLOCKED_SMS:Ljava/lang/String; = "com.android.server.enterprise.restriction.SEND_BLOCKED_SMS"

.field public static final EXTRA_ORIG_ADDRESS:Ljava/lang/String; = "extra_orig_address"

.field public static final EXTRA_PDU:Ljava/lang/String; = "extra_pdu"

.field public static final EXTRA_SEND_TYPE:Ljava/lang/String; = "send_type"

.field public static final EXTRA_TIME_STAMP:Ljava/lang/String; = "extra_time_stamp"

.field public static final ICCID_AVAILABLE:Ljava/lang/String; = "com.android.server.enterprise.ICCID_AVAILABLE"

.field public static final PERMISSION_RECEIVE_BLOCKED_SMS_MMS:Ljava/lang/String; = "android.permission.sec.RECEIVE_BLOCKED_SMS_MMS"

.field public static final SENDTYPE_GENERIC:I = -0x1

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string v0, "PhoneRestrictionPolicy"

    sput-object v0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNumberOfIncomingCalls()Z
    .registers 5

    .prologue
    .line 134
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 135
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 136
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfIncomingCalls()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 141
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 138
    :catch_b
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-addNumberOfIncomingCalls returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public addNumberOfIncomingSms()Z
    .registers 5

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 197
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 198
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfIncomingSms()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 203
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 200
    :catch_b
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-addNumberOfIncomingSms returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public addNumberOfOutgoingCalls()Z
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
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfOutgoingCalls()Z
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
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-addNumberOfOutgoingCalls returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public addNumberOfOutgoingSms()Z
    .registers 5

    .prologue
    .line 215
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 216
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 217
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfOutgoingSms()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 222
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 219
    :catch_b
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-addNumberOfOutgoingSms returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .registers 6
    .param p1, "dialNumber"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 69
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 70
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->canIncomingCall(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 75
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 72
    :catch_b
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-canIncomingCall returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .registers 6
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 272
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 273
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 274
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->canIncomingSms(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 279
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 276
    :catch_b
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-canIncomingSms returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .registers 6
    .param p1, "dialNumber"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 93
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 94
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->canOutgoingCall(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 99
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 96
    :catch_b
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-canOutgoingCall returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .registers 6
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 253
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 254
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 255
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->canOutgoingSms(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 260
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 257
    :catch_b
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-canOutgoingSms returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .registers 5

    .prologue
    .line 234
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 235
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 236
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->decreaseNumberOfOutgoingSms()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 241
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 238
    :catch_b
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-decreaseNumberOfOutgoingSms returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getEmergencyCallOnly(Z)Z
    .registers 6
    .param p1, "allAdmins"    # Z

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 116
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 117
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getEmergencyCallOnly(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 122
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 119
    :catch_b
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getEmergencyCallOnly returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isBlockMmsWithStorageEnabled()Z
    .registers 5

    .prologue
    .line 482
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 483
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 484
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isBlockMmsWithStorageEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 489
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 486
    :catch_b
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBlockMmsWithStorageEnabled returning default value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isBlockSmsWithStorageEnabled()Z
    .registers 5

    .prologue
    .line 442
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 443
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 444
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isBlockSmsWithStorageEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 449
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 446
    :catch_b
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBlockSmsWithStorageEnabled returning default value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isCopyContactToSimAllowed(I)Z
    .registers 6
    .param p1, "message"    # I

    .prologue
    .line 537
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 538
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 539
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isCopyContactToSimAllowed(I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 544
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 541
    :catch_b
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isCopyContactToSimAllowed returning default value "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isIncomingMmsAllowed()Z
    .registers 5

    .prologue
    .line 401
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 402
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 403
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isIncomingMmsAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 408
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 405
    :catch_b
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isIncomingMmsAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isIncomingSmsAllowed()Z
    .registers 5

    .prologue
    .line 315
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 316
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 317
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isIncomingSmsAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 322
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 319
    :catch_b
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isIncomingSmsAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .registers 5

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 178
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 179
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isLimitNumberOfSmsEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 184
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 181
    :catch_b
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isLimitNumberOfSmsEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isOutgoingSmsAllowed()Z
    .registers 5

    .prologue
    .line 358
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 359
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 360
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingSmsAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 365
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 362
    :catch_b
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isOutgoingSmsAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isSimLockedByAdmin(Ljava/lang/String;)Z
    .registers 6
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 524
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 525
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 526
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSimLockedByAdmin(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 531
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 528
    :catch_b
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isSimLockedByAdmin returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isWapPushAllowed()Z
    .registers 5

    .prologue
    .line 512
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 513
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 514
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isWapPushAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 519
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 516
    :catch_b
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isWapPushAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    .registers 13
    .param p1, "isSms"    # Z
    .param p2, "pdu"    # [B
    .param p3, "srcAddress"    # Ljava/lang/String;
    .param p4, "sendType"    # I
    .param p5, "timeStamp"    # Ljava/lang/String;

    .prologue
    .line 498
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 499
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_e

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 500
    invoke-interface/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 505
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_e
    :goto_e
    return-void

    .line 502
    :catch_f
    move-exception v6

    .line 503
    .local v6, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-storeBlockedSmsMms fail to save sms/mms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method
