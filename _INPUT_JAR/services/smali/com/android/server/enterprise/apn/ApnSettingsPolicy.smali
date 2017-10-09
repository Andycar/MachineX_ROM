.class public Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Landroid/app/enterprise/IApnSettingsPolicy$Stub;
.source "ApnSettingsPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;
    }
.end annotation


# static fields
.field public static AUTH_TYPE_CHAP:I = 0x0

.field public static AUTH_TYPE_NONE:I = 0x0

.field private static AUTH_TYPE_NOTSET:I = 0x0

.field public static AUTH_TYPE_PAP:I = 0x0

.field public static AUTH_TYPE_PAP_OR_CHAP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApnSettingsPolicyService"


# instance fields
.field private dunRequired:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NONE:I

    .line 70
    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP:I

    .line 72
    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_CHAP:I

    .line 74
    const/4 v0, 0x3

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP_OR_CHAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->dunRequired:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 103
    iput-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method private enforceApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getApnListConditionStr()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x3

    .line 374
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 375
    .local v4, "telMan":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b

    .line 377
    :cond_12
    const-string v5, "ApnSettingsPolicyService"

    const-string v6, "No SIM "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    .line 397
    :cond_1a
    :goto_1a
    return-object v0

    .line 381
    :cond_1b
    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "numeric":Ljava/lang/String;
    const/4 v0, 0x0

    .line 386
    .local v0, "APNLIST_SELECTION":Ljava/lang/String;
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_1a

    .line 388
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "mnc":Ljava/lang/String;
    if-eqz v1, :cond_1a

    if-eqz v2, :cond_1a

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mcc = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mnc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method private getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 6
    .param p1, "ColumnName"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 549
    const-string v1, ""

    .line 551
    .local v1, "value":Ljava/lang/String;
    :try_start_2
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 552
    if-nez v1, :cond_e

    .line 553
    const-string v1, ""
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    .line 560
    :cond_e
    :goto_e
    return-object v1

    .line 555
    :catch_f
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 82
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 85
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isValidApnId(J)Z
    .registers 16
    .param p1, "apId"    # J

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 336
    const/4 v8, 0x0

    .line 337
    .local v8, "isValid":Z
    const/4 v6, 0x0

    .line 339
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v4, 0x0

    cmp-long v0, v4, p1

    if-gez v0, :cond_a7

    .line 340
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string/jumbo v0, "numeric"

    aput-object v0, v2, v11

    const-string/jumbo v0, "type"

    aput-object v0, v2, v10

    .line 344
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    :try_start_1c
    const-string v0, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 346
    .local v9, "numeric":Ljava/lang/String;
    sget-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 347
    .local v1, "url":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 348
    const-string v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidApnId() row count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    .line 350
    if-eqz v8, :cond_90

    .line 351
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "dun"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_8c} :catch_96
    .catchall {:try_start_1c .. :try_end_8c} :catchall_a0

    move-result v0

    if-eqz v0, :cond_90

    .line 357
    :cond_8f
    const/4 v8, 0x0

    .line 363
    :cond_90
    if-eqz v6, :cond_95

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 368
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v9    # "numeric":Ljava/lang/String;
    :cond_95
    :goto_95
    return v8

    .line 360
    .restart local v2    # "ID_PROJECTION":[Ljava/lang/String;
    :catch_96
    move-exception v7

    .line 361
    .local v7, "e":Ljava/lang/Exception;
    :try_start_97
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_a0

    .line 363
    if-eqz v6, :cond_95

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_95

    .line 363
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_a0
    move-exception v0

    if-eqz v6, :cond_a6

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a6
    throw v0

    .line 367
    .end local v2    # "ID_PROJECTION":[Ljava/lang/String;
    :cond_a7
    const-string v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidApnId() : invalid apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95
.end method

.method private setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "isNewAp"    # Z
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 570
    if-eqz p1, :cond_32

    .line 571
    if-nez p4, :cond_2d

    const-string v0, ""

    :goto_6
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_9
    :goto_9
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColumnValue: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void

    .line 571
    :cond_2d
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 574
    :cond_32
    if-eqz p4, :cond_9

    .line 575
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private validateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 581
    if-nez p1, :cond_3

    .end local p1    # "value":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addUpdateApn(Landroid/app/enterprise/ContextInfo;ZLandroid/app/enterprise/ApnSettings;)J
    .registers 41
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isNewAp"    # Z
    .param p3, "apnSettings"    # Landroid/app/enterprise/ApnSettings;

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_367

    .line 171
    const/16 v29, 0x1

    .line 172
    .local v29, "success":Z
    const-wide/16 v26, -0x1

    .line 173
    .local v26, "rowId":J
    const/4 v11, 0x0

    .local v11, "devMCC":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "devMNC":Ljava/lang/String;
    const/4 v13, 0x0

    .line 175
    .local v13, "devSimOperatorNumeric":Ljava/lang/String;
    if-nez p3, :cond_11

    move-wide/from16 v34, v26

    .line 332
    :goto_f
    monitor-exit p0

    return-wide v34

    .line 178
    :cond_11
    :try_start_11
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getId()J

    move-result-wide v6

    .line 179
    .local v6, "apId":J
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getUser()Ljava/lang/String;

    move-result-object v32

    .line 180
    .local v32, "user":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getServer()Ljava/lang/String;

    move-result-object v28

    .line 181
    .local v28, "server":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getPassword()Ljava/lang/String;

    move-result-object v22

    .line 182
    .local v22, "password":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getProxy()Ljava/lang/String;

    move-result-object v24

    .line 183
    .local v24, "proxy":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getPort()I

    move-result v23

    .line 184
    .local v23, "port":I
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMmsProxy()Ljava/lang/String;

    move-result-object v18

    .line 185
    .local v18, "mmsProxy":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMmsc()Ljava/lang/String;

    move-result-object v19

    .line 186
    .local v19, "mmsc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, "apType":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getAuthType()I

    move-result v10

    .line 188
    .local v10, "authType":I
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 189
    .local v21, "name":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getApn()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, "apn":Ljava/lang/String;
    if-eqz v21, :cond_55

    if-nez v9, :cond_5f

    .line 193
    :cond_55
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "Invalid value"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-wide/16 v34, -0x1

    goto :goto_f

    .line 197
    :cond_5f
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x41

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_75

    .line 198
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "APN name maximum length (65)"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-wide/16 v34, -0x1

    goto :goto_f

    .line 201
    :cond_75
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x78

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_8b

    .line 202
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "APN excedes maximum length (120)"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-wide/16 v34, -0x1

    goto :goto_f

    .line 205
    :cond_8b
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMcc()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 206
    .local v16, "mcc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMnc()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 207
    .local v20, "mnc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMmsPort()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_ae
    .catchall {:try_start_11 .. :try_end_ae} :catchall_367

    move-result-object v17

    .line 212
    .local v17, "mmsPort":Ljava/lang/String;
    :try_start_af
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 213
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 214
    const/4 v15, -0x1

    .line 216
    .local v15, "iMmsPort":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_cc

    const-string v34, "*"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v34

    if-eqz v34, :cond_cc

    .line 217
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 220
    :cond_cc
    if-nez p2, :cond_d4

    const-wide/16 v34, 0x1

    cmp-long v34, v34, v6

    if-gtz v34, :cond_10e

    :cond_d4
    if-eqz v16, :cond_10e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v34

    if-eqz v34, :cond_10e

    if-eqz v20, :cond_10e

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v34

    if-eqz v34, :cond_10e

    if-eqz v21, :cond_10e

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v34

    if-eqz v34, :cond_10e

    if-eqz v9, :cond_10e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v34

    if-eqz v34, :cond_10e

    const/16 v34, -0x1

    move/from16 v0, v34

    move/from16 v1, v23

    if-gt v0, v1, :cond_10e

    const/16 v34, -0x1

    move/from16 v0, v34

    if-gt v0, v15, :cond_10e

    const/16 v34, -0x2

    move/from16 v0, v34

    if-gt v0, v10, :cond_10e

    const/16 v34, 0x3

    move/from16 v0, v34

    if-ge v0, v10, :cond_19d

    .line 224
    :cond_10e
    const/16 v29, 0x0

    .line 225
    if-nez p2, :cond_132

    const-wide/16 v34, 0x1

    cmp-long v34, v34, v6

    if-lez v34, :cond_132

    .line 226
    const-string v34, "ApnSettingsPolicyService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "addUpdateAp() : invalid ap Id "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_132
    if-eqz v21, :cond_13a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v34

    if-nez v34, :cond_141

    .line 228
    :cond_13a
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap name"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_141
    if-eqz v9, :cond_149

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v34

    if-nez v34, :cond_150

    .line 230
    :cond_149
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap apn"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_150
    if-eqz v16, :cond_158

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v34

    if-nez v34, :cond_15f

    .line 232
    :cond_158
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap mcc"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_15f
    if-eqz v20, :cond_167

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v34

    if-nez v34, :cond_16e

    .line 234
    :cond_167
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap mnc"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_16e
    const/16 v34, -0x1

    move/from16 v0, v34

    move/from16 v1, v23

    if-le v0, v1, :cond_17d

    .line 236
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap port"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_17d
    const/16 v34, -0x1

    move/from16 v0, v34

    if-le v0, v15, :cond_18a

    .line 238
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap iMmsPort"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_18a
    const/16 v34, -0x2

    move/from16 v0, v34

    if-gt v0, v10, :cond_196

    const/16 v34, 0x3

    move/from16 v0, v34

    if-ge v0, v10, :cond_19d

    .line 240
    :cond_196
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp() : invalid ap authType"

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_19d} :catch_35f
    .catchall {:try_start_af .. :try_end_19d} :catchall_367

    .line 247
    .end local v15    # "iMmsPort":I
    :cond_19d
    :goto_19d
    if-eqz v29, :cond_35b

    .line 249
    :try_start_19f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const-string/jumbo v35, "phone"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telephony/TelephonyManager;

    .line 251
    .local v30, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v13

    .line 253
    if-eqz v13, :cond_1d4

    const/16 v34, 0x4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_1d4

    .line 255
    const/16 v34, 0x0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 257
    const/16 v34, 0x3

    move/from16 v0, v34

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 262
    :cond_1d4
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 264
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 269
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 271
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v33, "values":Landroid/content/ContentValues;
    const-string v34, "name"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v35, "numeric"

    if-eqz v16, :cond_22b

    if-nez v20, :cond_36a

    :cond_22b
    const/16 v34, 0x0

    :goto_22d
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v34, "mcc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v34, "mnc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v34, "apn"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v34, "user"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v34, "server"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v34, "password"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string/jumbo v34, "proxy"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v35, "port"

    if-ltz v23, :cond_385

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    :goto_2ae
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v34, "mmsproxy"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v34, "mmsport"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v34, "mmsc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-eqz p2, :cond_38d

    .line 291
    const-string v34, "authtype"

    const/16 v35, -0x2

    move/from16 v0, v35

    if-ge v0, v10, :cond_389

    const/16 v35, 0x4

    move/from16 v0, v35

    if-le v0, v10, :cond_389

    .end local v10    # "authType":I
    :goto_2f8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    :cond_2ff
    :goto_2ff
    const-string/jumbo v34, "type"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-eqz v12, :cond_32c

    if-eqz v11, :cond_32c

    .line 299
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_32c

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_32c

    .line 300
    const-string v34, "current"

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    :cond_32c
    invoke-virtual/range {v33 .. v33}, Landroid/content/ContentValues;->size()I

    move-result v34

    if-lez v34, :cond_3e8

    .line 305
    if-eqz p2, :cond_3ae

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    sget-object v35, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v31

    .line 309
    .local v31, "url":Landroid/net/Uri;
    if-eqz v31, :cond_3ab

    const/16 v29, 0x1

    .line 310
    :goto_34e
    if-eqz v29, :cond_35b

    .line 311
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp Created rowUri : "

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static/range {v31 .. v31}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_35a
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_35a} :catch_3a6
    .catchall {:try_start_19f .. :try_end_35a} :catchall_367

    move-result-wide v26

    .end local v30    # "tm":Landroid/telephony/TelephonyManager;
    .end local v31    # "url":Landroid/net/Uri;
    .end local v33    # "values":Landroid/content/ContentValues;
    :cond_35b
    :goto_35b
    move-wide/from16 v34, v26

    .line 332
    goto/16 :goto_f

    .line 242
    .restart local v10    # "authType":I
    :catch_35f
    move-exception v14

    .line 243
    .local v14, "e":Ljava/lang/Exception;
    const/16 v29, 0x0

    .line 244
    :try_start_362
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_365
    .catchall {:try_start_362 .. :try_end_365} :catchall_367

    goto/16 :goto_19d

    .line 170
    .end local v6    # "apId":J
    .end local v8    # "apType":Ljava/lang/String;
    .end local v9    # "apn":Ljava/lang/String;
    .end local v10    # "authType":I
    .end local v11    # "devMCC":Ljava/lang/String;
    .end local v12    # "devMNC":Ljava/lang/String;
    .end local v13    # "devSimOperatorNumeric":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "mcc":Ljava/lang/String;
    .end local v17    # "mmsPort":Ljava/lang/String;
    .end local v18    # "mmsProxy":Ljava/lang/String;
    .end local v19    # "mmsc":Ljava/lang/String;
    .end local v20    # "mnc":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "password":Ljava/lang/String;
    .end local v23    # "port":I
    .end local v24    # "proxy":Ljava/lang/String;
    .end local v26    # "rowId":J
    .end local v28    # "server":Ljava/lang/String;
    .end local v29    # "success":Z
    .end local v32    # "user":Ljava/lang/String;
    :catchall_367
    move-exception v34

    monitor-exit p0

    throw v34

    .line 275
    .restart local v6    # "apId":J
    .restart local v8    # "apType":Ljava/lang/String;
    .restart local v9    # "apn":Ljava/lang/String;
    .restart local v10    # "authType":I
    .restart local v11    # "devMCC":Ljava/lang/String;
    .restart local v12    # "devMNC":Ljava/lang/String;
    .restart local v13    # "devSimOperatorNumeric":Ljava/lang/String;
    .restart local v16    # "mcc":Ljava/lang/String;
    .restart local v17    # "mmsPort":Ljava/lang/String;
    .restart local v18    # "mmsProxy":Ljava/lang/String;
    .restart local v19    # "mmsc":Ljava/lang/String;
    .restart local v20    # "mnc":Ljava/lang/String;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "password":Ljava/lang/String;
    .restart local v23    # "port":I
    .restart local v24    # "proxy":Ljava/lang/String;
    .restart local v26    # "rowId":J
    .restart local v28    # "server":Ljava/lang/String;
    .restart local v29    # "success":Z
    .restart local v30    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v32    # "user":Ljava/lang/String;
    .restart local v33    # "values":Landroid/content/ContentValues;
    :cond_36a
    :try_start_36a
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_22d

    .line 284
    :cond_385
    const-string v34, ""

    goto/16 :goto_2ae

    .line 291
    :cond_389
    sget v10, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    goto/16 :goto_2f8

    .line 293
    :cond_38d
    if-nez p2, :cond_2ff

    const/16 v34, -0x2

    move/from16 v0, v34

    if-ge v0, v10, :cond_2ff

    const/16 v34, 0x4

    move/from16 v0, v34

    if-le v0, v10, :cond_2ff

    .line 294
    const-string v34, "authtype"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3a4
    .catch Ljava/lang/Exception; {:try_start_36a .. :try_end_3a4} :catch_3a6
    .catchall {:try_start_36a .. :try_end_3a4} :catchall_367

    goto/16 :goto_2ff

    .line 328
    .end local v10    # "authType":I
    .end local v30    # "tm":Landroid/telephony/TelephonyManager;
    .end local v33    # "values":Landroid/content/ContentValues;
    :catch_3a6
    move-exception v14

    .line 329
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_3a7
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3aa
    .catchall {:try_start_3a7 .. :try_end_3aa} :catchall_367

    goto :goto_35b

    .line 309
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v30    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v31    # "url":Landroid/net/Uri;
    .restart local v33    # "values":Landroid/content/ContentValues;
    :cond_3ab
    const/16 v29, 0x0

    goto :goto_34e

    .line 316
    .end local v31    # "url":Landroid/net/Uri;
    :cond_3ae
    :try_start_3ae
    sget-object v34, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v31

    .line 317
    .restart local v31    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 319
    .local v25, "rowCount":I
    if-lez v25, :cond_3e5

    const/16 v29, 0x1

    .line 320
    :goto_3d6
    if-eqz v29, :cond_35b

    .line 321
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp Updated rowUri : "

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static/range {v31 .. v31}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v26

    goto/16 :goto_35b

    .line 319
    :cond_3e5
    const/16 v29, 0x0

    goto :goto_3d6

    .line 326
    .end local v25    # "rowCount":I
    .end local v31    # "url":Landroid/net/Uri;
    :cond_3e8
    const-string v34, "ApnSettingsPolicyService"

    const-string v35, "addUpdateAp Error: Empty dataset."

    invoke-static/range {v34 .. v35}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3ef
    .catch Ljava/lang/Exception; {:try_start_3ae .. :try_end_3ef} :catch_3a6
    .catchall {:try_start_3ae .. :try_end_3ef} :catchall_367

    goto/16 :goto_35b
.end method

.method public declared-synchronized deleteApn(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apId"    # J

    .prologue
    const/4 v3, 0x0

    .line 141
    monitor-enter p0

    const/4 v1, -0x1

    .line 143
    .local v1, "rowCount":I
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 145
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p2

    if-lez v4, :cond_15

    .line 146
    const-string v4, "ApnSettingsPolicyService"

    const-string v5, "deleteAp : apId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_48

    .line 156
    :cond_13
    :goto_13
    monitor-exit p0

    return v3

    .line 150
    :cond_15
    :try_start_15
    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 151
    .local v2, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 152
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAp : deleted rowCount from ApTable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3f} :catch_43
    .catchall {:try_start_15 .. :try_end_3f} :catchall_48

    .line 156
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_3f
    if-lez v1, :cond_13

    const/4 v3, 0x1

    goto :goto_13

    .line 153
    :catch_43
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    :try_start_44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_3f

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_48
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getApnList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ApnSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 402
    const/4 v12, 0x0

    .line 403
    .local v12, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 404
    .local v8, "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    const/16 v2, 0xf

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "mcc"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "mnc"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "apn"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "user"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "server"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "password"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "proxy"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "port"

    aput-object v3, v4, v2

    const/16 v2, 0xa

    const-string v3, "mmsproxy"

    aput-object v3, v4, v2

    const/16 v2, 0xb

    const-string v3, "mmsport"

    aput-object v3, v4, v2

    const/16 v2, 0xc

    const-string v3, "mmsc"

    aput-object v3, v4, v2

    const/16 v2, 0xd

    const-string v3, "authtype"

    aput-object v3, v4, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "type"

    aput-object v3, v4, v2

    .line 410
    .local v4, "columns":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListConditionStr()Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, "APNLIST_SELECTION":Ljava/lang/String;
    :try_start_65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 417
    if-eqz v12, :cond_156

    .line 418
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7c} :catch_15c
    .catchall {:try_start_65 .. :try_end_7c} :catchall_166

    .line 419
    .end local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .local v9, "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :try_start_7c
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_155

    .line 421
    :cond_82
    new-instance v10, Landroid/app/enterprise/ApnSettings;

    invoke-direct {v10}, Landroid/app/enterprise/ApnSettings;-><init>()V

    .line 422
    .local v10, "apnSettings":Landroid/app/enterprise/ApnSettings;
    const-string v2, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 423
    .local v14, "id":J
    invoke-virtual {v10, v14, v15}, Landroid/app/enterprise/ApnSettings;->setId(J)V

    .line 424
    const-string v2, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setName(Ljava/lang/String;)V

    .line 425
    const-string v2, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 426
    const-string v2, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 427
    const-string v2, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 428
    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 429
    const-string/jumbo v2, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 430
    const-string/jumbo v2, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 431
    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 432
    const-string/jumbo v2, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v18

    .line 433
    .local v18, "strPort":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10a

    .line 434
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 435
    .local v16, "port":I
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/enterprise/ApnSettings;->setPort(I)V

    .line 437
    .end local v16    # "port":I
    :cond_10a
    const-string v2, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 438
    const-string v2, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 439
    const-string v2, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 440
    const-string v2, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    .line 441
    .local v17, "strAuthType":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_140

    .line 442
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 443
    .local v11, "authType":I
    invoke-virtual {v10, v11}, Landroid/app/enterprise/ApnSettings;->setAuthType(I)V

    .line 445
    .end local v11    # "authType":I
    :cond_140
    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    .line 447
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_152} :catch_170
    .catchall {:try_start_7c .. :try_end_152} :catchall_16d

    move-result v2

    if-nez v2, :cond_82

    .end local v10    # "apnSettings":Landroid/app/enterprise/ApnSettings;
    .end local v14    # "id":J
    .end local v17    # "strAuthType":Ljava/lang/String;
    .end local v18    # "strPort":Ljava/lang/String;
    :cond_155
    move-object v8, v9

    .line 455
    .end local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :cond_156
    if-eqz v12, :cond_15b

    .line 456
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_15b
    :goto_15b
    return-object v8

    .line 452
    :catch_15c
    move-exception v13

    .line 453
    .local v13, "e":Ljava/lang/Exception;
    :goto_15d
    :try_start_15d
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_160
    .catchall {:try_start_15d .. :try_end_160} :catchall_166

    .line 455
    if-eqz v12, :cond_15b

    .line 456
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_15b

    .line 455
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_166
    move-exception v2

    :goto_167
    if-eqz v12, :cond_16c

    .line 456
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_16c
    throw v2

    .line 455
    .end local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :catchall_16d
    move-exception v2

    move-object v8, v9

    .end local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    goto :goto_167

    .line 452
    .end local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :catch_170
    move-exception v13

    move-object v8, v9

    .end local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    goto :goto_15d
.end method

.method public getApnSettings(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/ApnSettings;
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apId"    # J

    .prologue
    .line 462
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 463
    const/4 v15, -0x1

    .line 464
    .local v15, "rowCount":I
    const/4 v10, 0x0

    .line 469
    .local v10, "cursor":Landroid/database/Cursor;
    const-wide/16 v4, 0x1

    cmp-long v2, v4, p2

    if-lez v2, :cond_14

    .line 470
    const-string v2, "ApnSettingsPolicyService"

    const-string v4, "getApnSettings : apId is invalid"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v8, 0x0

    .line 511
    :cond_13
    :goto_13
    return-object v8

    .line 474
    :cond_14
    :try_start_14
    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 475
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 476
    if-eqz v10, :cond_103

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_103

    .line 477
    new-instance v8, Landroid/app/enterprise/ApnSettings;

    invoke-direct {v8}, Landroid/app/enterprise/ApnSettings;-><init>()V

    .line 478
    .local v8, "apnSettings":Landroid/app/enterprise/ApnSettings;
    const-string v2, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 479
    .local v12, "id":J
    invoke-virtual {v8, v12, v13}, Landroid/app/enterprise/ApnSettings;->setId(J)V

    .line 480
    const-string v2, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setName(Ljava/lang/String;)V

    .line 481
    const-string v2, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 482
    const-string v2, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 483
    const-string v2, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v2, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 486
    const-string/jumbo v2, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 487
    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 488
    const-string/jumbo v2, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    .line 489
    .local v17, "strPort":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 490
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 491
    .local v14, "port":I
    invoke-virtual {v8, v14}, Landroid/app/enterprise/ApnSettings;->setPort(I)V

    .line 493
    .end local v14    # "port":I
    :cond_ba
    const-string v2, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 494
    const-string v2, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 495
    const-string v2, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 496
    const-string v2, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    .line 497
    .local v16, "strAuthType":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f0

    .line 498
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 499
    .local v9, "authType":I
    invoke-virtual {v8, v9}, Landroid/app/enterprise/ApnSettings;->setAuthType(I)V

    .line 501
    .end local v9    # "authType":I
    :cond_f0
    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_fc} :catch_10b
    .catchall {:try_start_14 .. :try_end_fc} :catchall_115

    .line 508
    if-eqz v10, :cond_13

    .line 509
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_13

    .line 508
    .end local v8    # "apnSettings":Landroid/app/enterprise/ApnSettings;
    .end local v12    # "id":J
    .end local v16    # "strAuthType":Ljava/lang/String;
    .end local v17    # "strPort":Ljava/lang/String;
    :cond_103
    if-eqz v10, :cond_108

    .line 509
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 511
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_108
    :goto_108
    const/4 v8, 0x0

    goto/16 :goto_13

    .line 505
    :catch_10b
    move-exception v11

    .line 506
    .local v11, "e":Ljava/lang/Exception;
    :try_start_10c
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10f
    .catchall {:try_start_10c .. :try_end_10f} :catchall_115

    .line 508
    if-eqz v10, :cond_108

    .line 509
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_108

    .line 508
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_115
    move-exception v2

    if-eqz v10, :cond_11b

    .line 509
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_11b
    throw v2
.end method

.method public getPreferredApn(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ApnSettings;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 517
    const/4 v6, 0x0

    .line 518
    .local v6, "apn":Landroid/app/enterprise/ApnSettings;
    const/4 v7, 0x0

    .line 520
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "ApnSettingsPolicyService"

    const-string v1, "getPreferredApn():"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :try_start_c
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 527
    if-eqz v7, :cond_62

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 528
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 529
    .local v8, "apnId":J
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_62

    .line 531
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/ApnSettings;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_61} :catch_68
    .catchall {:try_start_c .. :try_end_61} :catchall_87

    move-result-object v6

    .line 540
    .end local v8    # "apnId":J
    :cond_62
    if-eqz v7, :cond_67

    .line 541
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 545
    :cond_67
    :goto_67
    return-object v6

    .line 536
    :catch_68
    move-exception v10

    .line 537
    .local v10, "e":Ljava/lang/Exception;
    :try_start_69
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn Ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_69 .. :try_end_81} :catchall_87

    .line 540
    if-eqz v7, :cond_67

    .line 541
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_67

    .line 540
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_87
    move-exception v0

    if-eqz v7, :cond_8d

    .line 541
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8d
    throw v0
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 618
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 624
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 635
    return-void
.end method

.method public declared-synchronized setPreferredApn(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apId"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 111
    monitor-enter p0

    const/4 v2, 0x0

    .line 113
    .local v2, "success":Z
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_74

    .line 116
    cmp-long v4, v6, p2

    if-eqz v4, :cond_2a

    cmp-long v4, v6, p2

    if-lez v4, :cond_2a

    .line 117
    :try_start_f
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreferedAp() : invalid ap Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_6f
    .catchall {:try_start_f .. :try_end_28} :catchall_74

    .line 131
    .end local p2    # "apId":J
    :cond_28
    :goto_28
    monitor-exit p0

    return v2

    .line 119
    .restart local p2    # "apId":J
    :cond_2a
    :try_start_2a
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 120
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "apn_id"

    cmp-long v5, v6, p2

    if-nez v5, :cond_3d

    const-wide/16 p2, -0x1

    .end local p2    # "apId":J
    :cond_3d
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 124
    .local v1, "rowCount":I
    if-lez v1, :cond_77

    const/4 v2, 0x1

    .line 125
    :goto_55
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreferedAp() row count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_6e} :catch_6f
    .catchall {:try_start_2a .. :try_end_6e} :catchall_74

    goto :goto_28

    .line 128
    .end local v1    # "rowCount":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_6f
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    :try_start_70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_28

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_74
    move-exception v4

    monitor-exit p0

    throw v4

    .line 124
    .restart local v1    # "rowCount":I
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_77
    const/4 v2, 0x0

    goto :goto_55
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 630
    return-void
.end method
