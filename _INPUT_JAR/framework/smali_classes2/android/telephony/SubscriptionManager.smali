.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ACTIVE:I = 0x1

.field public static final ASK_USER_SUB_ID:J = -0x3e9L

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field private static final DBG:Z = true

.field public static final DEFAULT_INT_VALUE:I = -0x64

.field public static final DEFAULT_NAME_RES:I = 0x104000e

.field public static final DEFAULT_NW_MODE:I = -0x1

.field public static final DEFAULT_PHONE_ID:I = 0x0

.field public static final DEFAULT_SLOT_ID:I = 0x7fffffff

.field public static final DEFAULT_STRING_VALUE:Ljava/lang/String; = "N/A"

.field public static final DEFAULT_SUB_ID:J = 0x7fffffffffffffffL

.field public static final DISLPAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final DISPLAY_NUMBER_NONE:I = 0x0

.field public static final EXTRA_VALUE_NEW_SIM:I = 0x1

.field public static final EXTRA_VALUE_NOCHANGE:I = 0x4

.field public static final EXTRA_VALUE_REMOVE_SIM:I = 0x2

.field public static final EXTRA_VALUE_REPOSITION_SIM:I = 0x3

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final INACTIVE:I = 0x0

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_NEW_SIM_STATUS:Ljava/lang/String; = "newSIMStatus"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field public static final INVALID_PHONE_ID:I = -0x3e8

.field public static final INVALID_SLOT_ID:I = -0x3e8

.field public static final INVALID_SUB_ID:J = -0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "SUB"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NAME_SOURCE_DEFAULT_SOURCE:I = 0x0

.field public static final NAME_SOURCE_SIM_SOURCE:I = 0x1

.field public static final NAME_SOURCE_UNDEFINDED:I = -0x1

.field public static final NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final NETWORK_MODE:Ljava/lang/String; = "network_mode"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field private static final RES_TYPE_BACKGROUND_DARK:I = 0x0

.field private static final RES_TYPE_BACKGROUND_LIGHT:I = 0x1

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final SIM_NOT_INSERTED:I = -0x1

.field public static final SUB_CONFIGURATION_IN_PROGRESS:I = 0x2

.field public static final SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final SUB_STATE:Ljava/lang/String; = "sub_state"

.field private static final VDBG:Z

.field private static final sSimBackgroundDarkRes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 287
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->setSimResource(I)[I

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->sSimBackgroundDarkRes:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const-string v0, "SubscriptionManager created"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public static activateSubId(J)V
    .registers 6
    .param p0, "subId"    # J

    .prologue
    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateSubId sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1104
    :try_start_16
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/telephony/ISub;->activateSubId(J)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 1108
    :goto_1d
    return-void

    .line 1105
    :catch_1e
    move-exception v0

    .line 1106
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1d
.end method

.method public static addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .registers 4
    .param p0, "iccId"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 493
    if-nez p0, :cond_7

    .line 494
    const-string v1, "[addSubInfoRecord]- null iccId"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 496
    :cond_7
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 497
    const-string v1, "[addSubInfoRecord]- invalid slotId"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 501
    :cond_12
    :try_start_12
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 502
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_21

    .line 504
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->addSubInfoRecord(Ljava/lang/String;I)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_21} :catch_23

    .line 511
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_21
    :goto_21
    const/4 v1, 0x0

    return-object v1

    .line 506
    :catch_23
    move-exception v1

    goto :goto_21
.end method

.method public static allDefaultsSelected()Z
    .registers 6

    .prologue
    const-wide/16 v4, -0x3e8

    const/4 v0, 0x0

    .line 991
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_c

    .line 1000
    :cond_b
    :goto_b
    return v0

    .line 994
    :cond_c
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    .line 997
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    .line 1000
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static clearDefaultsForInactiveSubIds()V
    .registers 2

    .prologue
    .line 1011
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1012
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 1013
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearDefaultsForInactiveSubIds()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1018
    :cond_f
    :goto_f
    return-void

    .line 1015
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static clearSubInfo()V
    .registers 2

    .prologue
    .line 977
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 978
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 979
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 985
    :cond_f
    :goto_f
    return-void

    .line 981
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static deactivateSubId(J)V
    .registers 6
    .param p0, "subId"    # J

    .prologue
    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateSubId sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1114
    :try_start_16
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/telephony/ISub;->deactivateSubId(J)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 1118
    :goto_1d
    return-void

    .line 1115
    :catch_1e
    move-exception v0

    .line 1116
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1d
.end method

.method public static getActiveSubIdList()[J
    .registers 3

    .prologue
    .line 1080
    const/4 v1, 0x0

    .line 1083
    .local v1, "subId":[J
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1084
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_11

    .line 1085
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList()[J
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_17

    move-result-object v1

    .line 1091
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_11
    :goto_11
    if-nez v1, :cond_16

    .line 1092
    const/4 v2, 0x0

    new-array v1, v2, [J

    .line 1095
    :cond_16
    return-object v1

    .line 1087
    :catch_17
    move-exception v2

    goto :goto_11
.end method

.method public static getActiveSubInfoCount()I
    .registers 3

    .prologue
    .line 470
    const/4 v1, 0x0

    .line 473
    .local v1, "result":I
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 474
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_11

    .line 475
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 481
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_11
    :goto_11
    return v1

    .line 477
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public static getActiveSubInfoList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    const/4 v1, 0x0

    .line 428
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 429
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_11

    .line 430
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoList()Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_19

    move-result-object v1

    .line 436
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_11
    :goto_11
    if-nez v1, :cond_18

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :cond_18
    return-object v1

    .line 432
    :catch_19
    move-exception v2

    goto :goto_11
.end method

.method public static getAllSubInfoCount()I
    .registers 3

    .prologue
    .line 450
    const/4 v1, 0x0

    .line 453
    .local v1, "result":I
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 454
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_11

    .line 455
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 461
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_11
    :goto_11
    return v1

    .line 457
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public static getAllSubInfoList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    const/4 v1, 0x0

    .line 405
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :try_start_1
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 406
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_11

    .line 407
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList()Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_19

    move-result-object v1

    .line 413
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_11
    :goto_11
    if-nez v1, :cond_18

    .line 414
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :cond_18
    return-object v1

    .line 409
    :catch_19
    move-exception v2

    goto :goto_11
.end method

.method public static getDefaultDataPhoneId()I
    .registers 2

    .prologue
    .line 971
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method public static getDefaultDataSubId()J
    .registers 4

    .prologue
    .line 923
    const-wide/16 v2, -0x3e8

    .line 926
    .local v2, "subId":J
    :try_start_2
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 927
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_12

    .line 928
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultDataSubId()J
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_13

    move-result-wide v2

    .line 935
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_12
    :goto_12
    return-wide v2

    .line 930
    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method public static getDefaultDataSubInfo()Landroid/telephony/SubInfoRecord;
    .registers 2

    .prologue
    .line 966
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSmsPhoneId()I
    .registers 2

    .prologue
    .line 918
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method public static getDefaultSmsSubId()J
    .registers 4

    .prologue
    .line 883
    const-wide/16 v2, -0x3e8

    .line 886
    .local v2, "subId":J
    :try_start_2
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 887
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_12

    .line 888
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultSmsSubId()J
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_13

    move-result-wide v2

    .line 895
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_12
    :goto_12
    return-wide v2

    .line 890
    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method public static getDefaultSmsSubInfo()Landroid/telephony/SubInfoRecord;
    .registers 2

    .prologue
    .line 913
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSubId()J
    .registers 4

    .prologue
    .line 796
    const-wide/16 v2, -0x3e8

    .line 799
    .local v2, "subId":J
    :try_start_2
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 800
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_12

    .line 801
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultSubId()J
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_13

    move-result-wide v2

    .line 808
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_12
    :goto_12
    return-wide v2

    .line 803
    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method public static getDefaultVoicePhoneId()I
    .registers 2

    .prologue
    .line 848
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSubId()J
    .registers 4

    .prologue
    .line 813
    const-wide/16 v2, -0x3e8

    .line 816
    .local v2, "subId":J
    :try_start_2
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 817
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_12

    .line 818
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()J
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_13

    move-result-wide v2

    .line 825
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_12
    :goto_12
    return-wide v2

    .line 820
    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method public static getDefaultVoiceSubInfo()Landroid/telephony/SubInfoRecord;
    .registers 2

    .prologue
    .line 843
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method private static getISubInfo()Lcom/android/internal/telephony/ISub;
    .registers 1

    .prologue
    .line 1142
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneId(J)I
    .registers 6
    .param p0, "subId"    # J

    .prologue
    .line 728
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p0, v2

    if-nez v2, :cond_10

    .line 730
    const-string v2, "[getPhoneId]- default subid insert DEFAULT_PHONE_ID return"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 731
    const/4 v1, 0x0

    .line 756
    :cond_f
    :goto_f
    return v1

    .line 735
    :cond_10
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 736
    const-string v2, "[getPhoneId]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 738
    const/16 v1, -0x3e8

    goto :goto_f

    .line 743
    :cond_1e
    const/16 v1, -0x3e8

    .line 747
    .local v1, "result":I
    :try_start_20
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 748
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 749
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->getPhoneId(J)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2f} :catch_31

    move-result v1

    goto :goto_f

    .line 751
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_31
    move-exception v2

    goto :goto_f
.end method

.method public static getSlotId(J)I
    .registers 6
    .param p0, "subId"    # J

    .prologue
    .line 682
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_b

    .line 683
    const-string v2, "[getSlotId]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 686
    :cond_b
    const/16 v1, -0x3e8

    .line 689
    .local v1, "result":I
    :try_start_d
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 690
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1d

    .line 691
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->getSlotId(J)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1e

    move-result v1

    .line 697
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1d
    :goto_1d
    return v1

    .line 693
    :catch_1e
    move-exception v2

    goto :goto_1d
.end method

.method public static getSubId(I)[J
    .registers 5
    .param p0, "slotId"    # I

    .prologue
    .line 703
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_30

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSubId]- fail, slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getSimCount():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 708
    const/4 v1, 0x0

    .line 722
    :cond_2f
    :goto_2f
    return-object v1

    .line 711
    :cond_30
    const/4 v1, 0x0

    .line 714
    .local v1, "subId":[J
    :try_start_31
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 715
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_2f

    .line 716
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[J
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_40} :catch_42

    move-result-object v1

    goto :goto_2f

    .line 718
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_42
    move-exception v2

    goto :goto_2f
.end method

.method public static getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;
    .registers 6
    .param p0, "subId"    # J

    .prologue
    .line 311
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_d

    .line 312
    const-string v2, "[getSubInfoForSubscriberx]- invalid subId"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 313
    const/4 v1, 0x0

    .line 327
    :cond_c
    :goto_c
    return-object v1

    .line 316
    :cond_d
    const/4 v1, 0x0

    .line 319
    .local v1, "subInfo":Landroid/telephony/SubInfoRecord;
    :try_start_e
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 320
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_c

    .line 321
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_1f

    move-result-object v1

    goto :goto_c

    .line 323
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_1f
    move-exception v2

    goto :goto_c
.end method

.method public static getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p0, "iccId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    if-nez p0, :cond_9

    .line 340
    const-string v2, "[getSubInfoUsingIccId]- null iccid"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 341
    const/4 v1, 0x0

    .line 359
    :cond_8
    :goto_8
    return-object v1

    .line 344
    :cond_9
    const/4 v1, 0x0

    .line 347
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :try_start_a
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 348
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1a

    .line 349
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_22

    move-result-object v1

    .line 356
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1a
    :goto_1a
    if-nez v1, :cond_8

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_8

    .line 351
    :catch_22
    move-exception v2

    goto :goto_1a
.end method

.method public static getSubInfoUsingSlotId(I)Ljava/util/List;
    .registers 4
    .param p0, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 371
    const-string v2, "[getSubInfoUsingSlotId]- invalid slotId"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 372
    const/4 v1, 0x0

    .line 390
    :cond_c
    :goto_c
    return-object v1

    .line 375
    :cond_d
    const/4 v1, 0x0

    .line 378
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :try_start_e
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 379
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1e

    .line 380
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubInfoUsingSlotId(I)Ljava/util/List;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_26

    move-result-object v1

    .line 387
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1e
    :goto_1e
    if-nez v1, :cond_c

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    goto :goto_c

    .line 382
    :catch_26
    move-exception v2

    goto :goto_1e
.end method

.method public static getSubState(J)I
    .registers 6
    .param p0, "subId"    # J

    .prologue
    .line 1121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubState sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1123
    :try_start_16
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/telephony/ISub;->getSubState(J)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1f

    move-result v1

    .line 1125
    :goto_1e
    return v1

    .line 1124
    :catch_1f
    move-exception v0

    .line 1125
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public static isSMSPromptEnabled()Z
    .registers 2

    .prologue
    .line 855
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 856
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_12

    .line 857
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->isSMSPromptEnabled()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    .line 862
    :goto_10
    return v1

    .line 859
    :catch_11
    move-exception v1

    .line 862
    :cond_12
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static isValidPhoneId(I)Z
    .registers 2
    .param p0, "phoneId"    # I

    .prologue
    .line 1050
    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_12

    if-ltz p0, :cond_12

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isValidSlotId(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 1041
    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_12

    if-ltz p0, :cond_12

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-ge p0, v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isValidSubId(J)Z
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1027
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-gez v0, :cond_11

    const-wide/16 v0, -0x3e8

    cmp-long v0, p0, v0

    if-lez v0, :cond_11

    .line 1028
    const/4 v0, 0x1

    .line 1031
    :goto_10
    return v0

    .line 1030
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidSubId, invalid sub id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1031
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isVoicePromptEnabled()Z
    .registers 2

    .prologue
    .line 1148
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1149
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_12

    .line 1150
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->isVoicePromptEnabled()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    .line 1155
    :goto_10
    return v1

    .line 1152
    :catch_11
    move-exception v1

    .line 1155
    :cond_12
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 786
    const-string v0, "SUB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SubManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    .line 1056
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1057
    .local v0, "subIds":[J
    if-eqz v0, :cond_10

    array-length v1, v0

    if-lez v1, :cond_10

    .line 1058
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {p0, p1, v2, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;IJ)V

    .line 1062
    :goto_f
    return-void

    .line 1060
    :cond_10
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;IJ)V
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # J

    .prologue
    .line 1067
    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1068
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1071
    const-string/jumbo v0, "slot"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1072
    return-void
.end method

.method public static setColor(IJ)I
    .registers 8
    .param p0, "color"    # I
    .param p1, "subId"    # J

    .prologue
    .line 524
    sget-object v3, Landroid/telephony/SubscriptionManager;->sSimBackgroundDarkRes:[I

    array-length v2, v3

    .line 525
    .local v2, "size":I
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v3

    if-eqz v3, :cond_d

    if-ltz p0, :cond_d

    if-lt p0, v2, :cond_14

    .line 526
    :cond_d
    const-string v3, "[setColor]- fail"

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 527
    const/4 v1, -0x1

    .line 541
    :cond_13
    :goto_13
    return v1

    .line 530
    :cond_14
    const/4 v1, 0x0

    .line 533
    .local v1, "result":I
    :try_start_15
    const-string v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 534
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_13

    .line 535
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setColor(IJ)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_24} :catch_26

    move-result v1

    goto :goto_13

    .line 537
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_26
    move-exception v3

    goto :goto_13
.end method

.method public static setDataRoaming(IJ)I
    .registers 6
    .param p0, "roaming"    # I
    .param p1, "subId"    # J

    .prologue
    .line 656
    if-ltz p0, :cond_8

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_f

    .line 657
    :cond_8
    const-string v2, "[setDataRoaming]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 658
    const/4 v1, -0x1

    .line 672
    :cond_e
    :goto_e
    return v1

    .line 661
    :cond_f
    const/4 v1, 0x0

    .line 664
    .local v1, "result":I
    :try_start_10
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 665
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_e

    .line 666
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDataRoaming(IJ)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_21

    move-result v1

    goto :goto_e

    .line 668
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_21
    move-exception v2

    goto :goto_e
.end method

.method public static setDefaultDataSubId(J)V
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 942
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 943
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 944
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(J)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 949
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 946
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static setDefaultDataSubIdForMMS(J)V
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 955
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 956
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 957
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubIdForMMS(J)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 962
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 959
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static setDefaultSmsSubId(J)V
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 902
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 903
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 904
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(J)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 909
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 906
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static setDefaultVoiceSubId(J)V
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 832
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 833
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 834
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(J)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 839
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 836
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static setDisplayName(Ljava/lang/String;J)I
    .registers 6
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # J

    .prologue
    .line 553
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;JJ)I

    move-result v0

    return v0
.end method

.method public static setDisplayName(Ljava/lang/String;JJ)I
    .registers 12
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # J
    .param p3, "nameSource"    # J

    .prologue
    .line 570
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v1

    if-nez v1, :cond_d

    .line 571
    const-string v1, "[setDisplayName]- fail"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 572
    const/4 v6, -0x1

    .line 586
    :cond_c
    :goto_c
    return v6

    .line 575
    :cond_d
    const/4 v6, 0x0

    .line 578
    .local v6, "result":I
    :try_start_e
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 579
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_c

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 580
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;JJ)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_20} :catch_22

    move-result v6

    goto :goto_c

    .line 582
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_22
    move-exception v1

    goto :goto_c
.end method

.method public static setDisplayNumber(Ljava/lang/String;J)I
    .registers 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "subId"    # J

    .prologue
    .line 598
    if-eqz p0, :cond_8

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_f

    .line 599
    :cond_8
    const-string v2, "[setDisplayNumber]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 600
    const/4 v1, -0x1

    .line 614
    :cond_e
    :goto_e
    return v1

    .line 603
    :cond_f
    const/4 v1, 0x0

    .line 606
    .local v1, "result":I
    :try_start_10
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 607
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_e

    .line 608
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;J)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_21

    move-result v1

    goto :goto_e

    .line 610
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_21
    move-exception v2

    goto :goto_e
.end method

.method public static setDisplayNumberFormat(IJ)I
    .registers 6
    .param p0, "format"    # I
    .param p1, "subId"    # J

    .prologue
    .line 627
    if-ltz p0, :cond_8

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v2

    if-nez v2, :cond_f

    .line 628
    :cond_8
    const-string v2, "[setDisplayNumberFormat]- fail, return -1"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 629
    const/4 v1, -0x1

    .line 643
    :cond_e
    :goto_e
    return v1

    .line 632
    :cond_f
    const/4 v1, 0x0

    .line 635
    .local v1, "result":I
    :try_start_10
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 636
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_e

    .line 637
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumberFormat(IJ)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_21

    move-result v1

    goto :goto_e

    .line 639
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_21
    move-exception v2

    goto :goto_e
.end method

.method public static setSMSPromptEnabled(Z)V
    .registers 3
    .param p0, "enabled"    # Z

    .prologue
    .line 868
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 869
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 870
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->setSMSPromptEnabled(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 875
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 872
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private static setSimResource(I)[I
    .registers 3
    .param p0, "type"    # I

    .prologue
    const/4 v1, 0x4

    .line 761
    const/4 v0, 0x0

    .line 763
    .local v0, "simResource":[I
    packed-switch p0, :pswitch_data_12

    .line 782
    :goto_5
    return-object v0

    .line 765
    :pswitch_6
    new-array v0, v1, [I

    .end local v0    # "simResource":[I
    fill-array-data v0, :array_1a

    .line 771
    .restart local v0    # "simResource":[I
    goto :goto_5

    .line 773
    :pswitch_c
    new-array v0, v1, [I

    .end local v0    # "simResource":[I
    fill-array-data v0, :array_26

    .restart local v0    # "simResource":[I
    goto :goto_5

    .line 763
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch

    .line 765
    :array_1a
    .array-data 4
        0x1080788
        0x108078a
        0x1080789
        0x108078b
    .end array-data

    .line 773
    :array_26
    .array-data 4
        0x108078c
        0x108078e
        0x108078d
        0x108078f
    .end array-data
.end method

.method public static setSubState(JI)I
    .registers 7
    .param p0, "subId"    # J
    .param p2, "subState"    # I

    .prologue
    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSubState sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1132
    :try_start_21
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubState(JI)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_2a

    move-result v1

    .line 1134
    :goto_29
    return v1

    .line 1133
    :catch_2a
    move-exception v0

    .line 1134
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public static setVoicePromptEnabled(Z)V
    .registers 3
    .param p0, "enabled"    # Z

    .prologue
    .line 1161
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1162
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_f

    .line 1163
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->setVoicePromptEnabled(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1168
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_f
    :goto_f
    return-void

    .line 1165
    :catch_10
    move-exception v1

    goto :goto_f
.end method
