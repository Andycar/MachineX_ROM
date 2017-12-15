.class public Lcom/samsung/android/telephony/MultiSimManager;
.super Ljava/lang/Object;
.source "MultiSimManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MultiSimManager"

.field private static final PHONE_ID_TYPE_FOREGROUND_CALL:I = 0x0

.field private static final PHONE_ID_TYPE_REJECT_CALL:I = 0x1

.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field public static final SIMSLOT3:I = 0x2

.field public static final SIMSLOT4:I = 0x3

.field public static final SIMSLOT5:I = 0x4

.field private static final SIMSLOT_COUNT:I

.field public static final TYPE_DATA:I = 0x3

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_SMS:I = 0x2

.field public static final TYPE_VOICE:I = 0x1

.field private static final mPhoneOnKey:[Ljava/lang/String;

.field private static final mSimIconKey:[Ljava/lang/String;

.field private static final mSimNameKey:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "select_name_1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "select_name_2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "select_name_3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "select_name_4"

    aput-object v1, v0, v5

    const-string/jumbo v1, "select_name_5"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "select_icon_1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "select_icon_2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "select_icon_3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "select_icon_4"

    aput-object v1, v0, v5

    const-string/jumbo v1, "select_icon_5"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "phone1_on"

    aput-object v1, v0, v2

    const-string/jumbo v1, "phone2_on"

    aput-object v1, v0, v3

    const-string/jumbo v1, "phone3_on"

    aput-object v1, v0, v4

    const-string/jumbo v1, "phone4_on"

    aput-object v1, v0, v5

    const-string/jumbo v1, "phone5_on"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    .line 89
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/samsung/android/telephony/MultiSimManager;->SIMSLOT_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activateSubId(J)V
    .registers 2
    .param p0, "subId"    # J

    .prologue
    .line 2382
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->activateSubId(J)V

    .line 2383
    return-void
.end method

.method public static addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .registers 3
    .param p0, "iccId"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 2026
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static allDefaultsSelected()Z
    .registers 1

    .prologue
    .line 2324
    invoke-static {}, Landroid/telephony/SubscriptionManager;->allDefaultsSelected()Z

    move-result v0

    return v0
.end method

.method public static answerRingingCall(I)V
    .registers 5
    .param p0, "slotId"    # I

    .prologue
    .line 1568
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1570
    .local v0, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->answerRingingCall(J)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_f

    .line 1573
    :goto_e
    return-void

    .line 1571
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method public static answerRingingCallUsingSubId(J)V
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1586
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->answerRingingCall(J)V

    .line 1587
    return-void
.end method

.method public static appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "str":Ljava/lang/StringBuilder;
    if-ltz p1, :cond_17

    sget v2, Lcom/samsung/android/telephony/MultiSimManager;->SIMSLOT_COUNT:I

    if-ge p1, v2, :cond_17

    .line 199
    if-eqz p1, :cond_12

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    :cond_12
    :goto_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 201
    :cond_17
    const-string v2, "MultiSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimSlot value is bigger than SIMSLOT_COUNT or smaller than 0.(text : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :try_start_3f
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "appendSimSlot method exception"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_47} :catch_47

    .line 205
    :catch_47
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public static call(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "slotId"    # I
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 1541
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1543
    .local v0, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/telephony/TelephonyManager;->call(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_f

    .line 1546
    :goto_e
    return-void

    .line 1544
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method public static callUsingSubId(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "subId"    # J
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 1555
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->call(JLjava/lang/String;Ljava/lang/String;)V

    .line 1556
    return-void
.end method

.method public static clearDefaultsForInactiveSubIds()V
    .registers 0

    .prologue
    .line 2332
    invoke-static {}, Landroid/telephony/SubscriptionManager;->clearDefaultsForInactiveSubIds()V

    .line 2333
    return-void
.end method

.method public static clearSubInfo()V
    .registers 0

    .prologue
    .line 2317
    invoke-static {}, Landroid/telephony/SubscriptionManager;->clearSubInfo()V

    .line 2318
    return-void
.end method

.method public static deactivateSubId(J)V
    .registers 2
    .param p0, "subId"    # J

    .prologue
    .line 2391
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->deactivateSubId(J)V

    .line 2392
    return-void
.end method

.method public static dial(ILjava/lang/String;)V
    .registers 6
    .param p0, "slotId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1516
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1518
    .local v0, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/telephony/TelephonyManager;->dial(JLjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_f

    .line 1521
    :goto_e
    return-void

    .line 1519
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method public static dialUsingSubId(JLjava/lang/String;)V
    .registers 5
    .param p0, "subId"    # J
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 1532
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager;->dial(JLjava/lang/String;)V

    .line 1533
    return-void
.end method

.method public static enableSimplifiedNetworkSettings(IZ)V
    .registers 6
    .param p0, "slotId"    # I
    .param p1, "enable"    # Z

    .prologue
    .line 1368
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1370
    .local v0, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/telephony/TelephonyManager;->enableSimplifiedNetworkSettingsForSubscriber(JZ)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_f

    .line 1373
    :goto_e
    return-void

    .line 1371
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method public static enableSimplifiedNetworkSettingsUsingSubId(JZ)V
    .registers 5
    .param p0, "subId"    # J
    .param p2, "enable"    # Z

    .prologue
    .line 1388
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager;->enableSimplifiedNetworkSettingsForSubscriber(JZ)V

    .line 1389
    return-void
.end method

.method public static endCall(I)Z
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1595
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1597
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->endCall(J)Z
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1599
    :goto_10
    return v2

    .line 1598
    :catch_11
    move-exception v0

    .line 1599
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static endCallUsingSubId(J)Z
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1610
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->endCall(J)Z

    move-result v0

    return v0
.end method

.method public static getActiveSubIdList()[J
    .registers 1

    .prologue
    .line 2373
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubIdList()[J

    move-result-object v0

    return-object v0
.end method

.method public static getActiveSubInfoCount()I
    .registers 1

    .prologue
    .line 2015
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoCount()I

    move-result v0

    return v0
.end method

.method public static getActiveSubInfoList()Ljava/util/List;
    .registers 1
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
    .line 1999
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllSubInfoCount()I
    .registers 1

    .prologue
    .line 2007
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getAllSubInfoCount()I

    move-result v0

    return v0
.end method

.method public static getAllSubInfoList()Ljava/util/List;
    .registers 1
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
    .line 1991
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getAllSubInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCallState(I)I
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1123
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1125
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getCallState(J)I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1127
    :goto_10
    return v2

    .line 1126
    :catch_11
    move-exception v0

    .line 1127
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static getCallStateUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1140
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getCallState(J)I

    move-result v0

    return v0
.end method

.method public static getCdmaEriIconIndex(I)I
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 1181
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1183
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex(J)I
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result v2

    .line 1185
    :goto_f
    return v2

    .line 1184
    :catch_10
    move-exception v0

    .line 1185
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public static getCdmaEriIconIndexUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1197
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex(J)I

    move-result v0

    return v0
.end method

.method public static getCdmaEriIconMode(I)I
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 1209
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1211
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode(J)I
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result v2

    .line 1213
    :goto_f
    return v2

    .line 1212
    :catch_10
    move-exception v0

    .line 1213
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public static getCdmaEriIconModeUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1225
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode(J)I

    move-result v0

    return v0
.end method

.method public static getCdmaEriText(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 1237
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1239
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCdmaEriText(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 1241
    :goto_f
    return-object v2

    .line 1240
    :catch_10
    move-exception v0

    .line 1241
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getCdmaEriTextUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1253
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getCdmaEriText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentPhoneType(I)I
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 427
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 429
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result v2

    .line 431
    :goto_f
    return v2

    .line 430
    :catch_10
    move-exception v0

    .line 431
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x1

    goto :goto_f
.end method

.method public static getCurrentPhoneTypeUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 443
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v0

    return v0
.end method

.method public static getDataNetworkType(I)I
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 610
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 612
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType(J)I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 614
    :goto_10
    return v2

    .line 613
    :catch_11
    move-exception v0

    .line 614
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static getDataNetworkTypeUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 627
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(J)I

    move-result v0

    return v0
.end method

.method public static getDataRoamingEnabled(I)Z
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1435
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1437
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled(J)Z
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1439
    :goto_10
    return v2

    .line 1438
    :catch_11
    move-exception v0

    .line 1439
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static getDataRoamingEnabledUsingSubId(J)Z
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1451
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static getDataServiceState(I)I
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1488
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1490
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getDataServiceState(J)I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1492
    :goto_10
    return v2

    .line 1491
    :catch_11
    move-exception v0

    .line 1492
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static getDataServiceStateUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1505
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getDataServiceState(J)I

    move-result v0

    return v0
.end method

.method public static getDataState(I)I
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1152
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1154
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getDataState(J)I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1156
    :goto_10
    return v2

    .line 1155
    :catch_11
    move-exception v0

    .line 1156
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static getDataStateUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1169
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getDataState(J)I

    move-result v0

    return v0
.end method

.method public static getDefaultPhoneId(I)I
    .registers 4
    .param p0, "type"    # I

    .prologue
    .line 2297
    packed-switch p0, :pswitch_data_2c

    .line 2307
    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDefaultPhoneId] Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 2300
    :pswitch_1d
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    goto :goto_1c

    .line 2302
    :pswitch_22
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    move-result v0

    goto :goto_1c

    .line 2304
    :pswitch_27
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    goto :goto_1c

    .line 2297
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_22
        :pswitch_27
    .end packed-switch
.end method

.method public static getDefaultSubId(I)J
    .registers 3
    .param p0, "type"    # I

    .prologue
    .line 2231
    packed-switch p0, :pswitch_data_18

    .line 2241
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    :goto_7
    return-wide v0

    .line 2234
    :pswitch_8
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v0

    goto :goto_7

    .line 2236
    :pswitch_d
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    goto :goto_7

    .line 2238
    :pswitch_12
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v0

    goto :goto_7

    .line 2231
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_8
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method public static getDefaultSubInfo(I)Landroid/telephony/SubInfoRecord;
    .registers 4
    .param p0, "type"    # I

    .prologue
    .line 2275
    packed-switch p0, :pswitch_data_2c

    .line 2285
    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDefaultSubInfo] Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const/4 v0, 0x0

    :goto_1c
    return-object v0

    .line 2278
    :pswitch_1d
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    goto :goto_1c

    .line 2280
    :pswitch_22
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    goto :goto_1c

    .line 2282
    :pswitch_27
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    goto :goto_1c

    .line 2275
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_22
        :pswitch_27
    .end packed-switch
.end method

.method public static getDeviceId(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 309
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIdUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 323
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v0

    .line 324
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEnabledSimCount(Landroid/content/Context;)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, "count":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "activeSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v0, :cond_38

    .line 224
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubInfoRecord;

    .line 225
    .local v4, "subInfoRecord":Landroid/telephony/SubInfoRecord;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v5, "ril.ICC_TYPE"

    iget-wide v6, v4, Landroid/telephony/SubInfoRecord;->subId:J

    const-string v8, "0"

    invoke-static {v5, v6, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "iccType":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    iget v5, v4, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-static {p0, v5}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 232
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iccType":Ljava/lang/String;
    .end local v4    # "subInfoRecord":Landroid/telephony/SubInfoRecord;
    :cond_38
    return v1
.end method

.method public static getGroupIdLevel1(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 833
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 835
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 837
    :goto_f
    return-object v2

    .line 836
    :catch_10
    move-exception v0

    .line 837
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getGroupIdLevel1UsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 853
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "slotId"    # I
    .param p1, "appType"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1332
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1334
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5, p1, p2}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 1336
    :goto_f
    return-object v2

    .line 1335
    :catch_10
    move-exception v0

    .line 1336
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getIccSimChallengeResponseUsingSubId(JILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "subId"    # J
    .param p2, "appType"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 1351
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImei(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 402
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImeiUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 415
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v0

    .line 416
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInsertedSimCount()I
    .registers 1

    .prologue
    .line 108
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoCount()I

    move-result v0

    return v0
.end method

.method public static getLine1AlphaTag(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 913
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 915
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getLine1AlphaTagForSubscriber(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 917
    :goto_f
    return-object v2

    .line 916
    :catch_10
    move-exception v0

    .line 917
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getLine1AlphaTagUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 935
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getLine1AlphaTagForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLine1Number(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 371
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 373
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 375
    :goto_f
    return-object v2

    .line 374
    :catch_10
    move-exception v0

    .line 375
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getLine1NumberUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 390
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLteOnCdmaMode(I)I
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 800
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 802
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(J)I
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result v2

    .line 804
    :goto_f
    return v2

    .line 803
    :catch_10
    move-exception v0

    .line 804
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public static getLteOnCdmaModeUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 818
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(J)I

    move-result v0

    return v0
.end method

.method public static getMsisdn(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 950
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 952
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getMsisdn(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 954
    :goto_f
    return-object v2

    .line 953
    :catch_10
    move-exception v0

    .line 954
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getMsisdnUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 970
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getMsisdn(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMultiSimPhoneId(I)I
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 1946
    packed-switch p0, :pswitch_data_18

    .line 1952
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1948
    :pswitch_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimForegroundPhoneId()I

    move-result v0

    goto :goto_4

    .line 1950
    :pswitch_e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimLastRejectIncomingCallPhoneId()I

    move-result v0

    goto :goto_4

    .line 1946
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
        :pswitch_e
    .end packed-switch
.end method

.method public static getNetworkCountryIso(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 549
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 551
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 553
    :goto_f
    return-object v2

    .line 552
    :catch_10
    move-exception v0

    .line 553
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getNetworkCountryIsoUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 569
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperator(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 484
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 486
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 488
    :goto_f
    return-object v2

    .line 487
    :catch_10
    move-exception v0

    .line 488
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getNetworkOperatorName(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 455
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 457
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 459
    :goto_f
    return-object v2

    .line 458
    :catch_10
    move-exception v0

    .line 459
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getNetworkOperatorNameUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 472
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 502
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(I)I
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 581
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 583
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getNetworkType(J)I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 585
    :goto_10
    return v2

    .line 584
    :catch_11
    move-exception v0

    .line 585
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static getNetworkTypeUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 598
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkType(J)I

    move-result v0

    return v0
.end method

.method public static getPhoneId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 2220
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method public static getServiceState(I)I
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1462
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1464
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getServiceState(J)I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1466
    :goto_10
    return v2

    .line 1465
    :catch_11
    move-exception v0

    .line 1466
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static getServiceStateUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1477
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getServiceState(J)I

    move-result v0

    return v0
.end method

.method public static getSimCountryIso(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 771
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 773
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 775
    :goto_f
    return-object v2

    .line 774
    :catch_10
    move-exception v0

    .line 775
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getSimCountryIsoUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 787
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimIcon(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, "simIcon":I
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimIcon ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-gez v0, :cond_35

    .line 158
    packed-switch p1, :pswitch_data_40

    .line 175
    const/4 v0, 0x0

    .line 180
    :cond_35
    :goto_35
    return v0

    .line 160
    :pswitch_36
    const/4 v0, 0x0

    .line 161
    goto :goto_35

    .line 163
    :pswitch_38
    const/4 v0, 0x1

    .line 164
    goto :goto_35

    .line 166
    :pswitch_3a
    const/4 v0, 0x2

    .line 167
    goto :goto_35

    .line 169
    :pswitch_3c
    const/4 v0, 0x3

    .line 170
    goto :goto_35

    .line 172
    :pswitch_3e
    const/4 v0, 0x4

    .line 173
    goto :goto_35

    .line 158
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_36
        :pswitch_38
        :pswitch_3a
        :pswitch_3c
        :pswitch_3e
    .end packed-switch
.end method

.method public static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "simName":Ljava/lang/String;
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-nez v0, :cond_35

    .line 122
    packed-switch p1, :pswitch_data_46

    .line 139
    const-string v0, "SIM 1"

    .line 144
    :cond_35
    :goto_35
    return-object v0

    .line 124
    :pswitch_36
    const-string v0, "SIM 1"

    .line 125
    goto :goto_35

    .line 127
    :pswitch_39
    const-string v0, "SIM 2"

    .line 128
    goto :goto_35

    .line 130
    :pswitch_3c
    const-string v0, "SIM 3"

    .line 131
    goto :goto_35

    .line 133
    :pswitch_3f
    const-string v0, "SIM 4"

    .line 134
    goto :goto_35

    .line 136
    :pswitch_42
    const-string v0, "SIM 5"

    .line 137
    goto :goto_35

    .line 122
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
    .end packed-switch
.end method

.method public static getSimOperator(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 716
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 718
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 720
    :goto_f
    return-object v2

    .line 719
    :catch_10
    move-exception v0

    .line 720
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getSimOperatorName(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 744
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 746
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorName(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 748
    :goto_f
    return-object v2

    .line 747
    :catch_10
    move-exception v0

    .line 748
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getSimOperatorNameUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 760
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimOperatorUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 733
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimSerialNumber(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 338
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 340
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 342
    :goto_f
    return-object v2

    .line 341
    :catch_10
    move-exception v0

    .line 342
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getSimSerialNumberUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 357
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimSlotCount()I
    .registers 1

    .prologue
    .line 100
    sget v0, Lcom/samsung/android/telephony/MultiSimManager;->SIMSLOT_COUNT:I

    return v0
.end method

.method public static getSimState(I)I
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 691
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public static getSimStateUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 703
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v0

    .line 704
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    return v1
.end method

.method public static getSimplifiedNetworkSettingsEnabled(I)Z
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1404
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1406
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getSimplifiedNetworkSettingsEnabledForSubscriber(J)Z
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1408
    :goto_10
    return v2

    .line 1407
    :catch_11
    move-exception v0

    .line 1408
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static getSimplifiedNetworkSettingsEnabledUsingSubId(J)Z
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1424
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getSimplifiedNetworkSettingsEnabledForSubscriber(J)Z

    move-result v0

    return v0
.end method

.method public static getSlotId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 2202
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v0

    return v0
.end method

.method public static getSubId(I)[J
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 2211
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1964
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;
    .registers 2
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
    .line 1973
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfoUsingSlotId(I)Ljava/util/List;
    .registers 2
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
    .line 1982
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubInfoUsingSlotId(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSubscriberId(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 278
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 280
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 282
    :goto_f
    return-object v2

    .line 281
    :catch_10
    move-exception v0

    .line 282
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getSubscriberIdUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 296
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 1295
    const/4 v1, 0x0

    .line 1296
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1297
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_22

    .line 1298
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1299
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_22

    array-length v3, v2

    if-ge p1, v3, :cond_22

    aget-object v3, v2, p1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 1301
    aget-object v1, v2, p1

    .line 1304
    .end local v2    # "values":[Ljava/lang/String;
    :cond_22
    if-nez v1, :cond_25

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_24
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_25
    move-object p2, v1

    goto :goto_24
.end method

.method public static getTelephonyPropertyUsingSubId(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "subId"    # J
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 1317
    invoke-static {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMailAlphaTag(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 1090
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1092
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 1094
    :goto_f
    return-object v2

    .line 1093
    :catch_10
    move-exception v0

    .line 1094
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getVoiceMailAlphaTagUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1111
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMailNumber(I)Ljava/lang/String;
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 988
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 990
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 992
    :goto_f
    return-object v2

    .line 991
    :catch_10
    move-exception v0

    .line 992
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getVoiceMailNumberUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1008
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMessageCount(I)I
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1055
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1057
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(J)I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1059
    :goto_10
    return v2

    .line 1058
    :catch_11
    move-exception v0

    .line 1059
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static getVoiceMessageCountUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1074
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(J)I

    move-result v0

    return v0
.end method

.method public static getVoiceNetworkType(I)I
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 638
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 640
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(J)I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 642
    :goto_10
    return v2

    .line 641
    :catch_11
    move-exception v0

    .line 642
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static getVoiceNetworkTypeUsingSubId(J)I
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 654
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(J)I

    move-result v0

    return v0
.end method

.method public static handlePinMmi(ILjava/lang/String;)Z
    .registers 8
    .param p0, "slotId"    # I
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1848
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1850
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5, p1}, Landroid/telephony/TelephonyManager;->handlePinMmi(JLjava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1852
    :goto_10
    return v2

    .line 1851
    :catch_11
    move-exception v0

    .line 1852
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static handlePinMmiUsingSubId(JLjava/lang/String;)Z
    .registers 5
    .param p0, "subId"    # J
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1866
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager;->handlePinMmi(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasIccCard(I)Z
    .registers 5
    .param p0, "slotId"    # I

    .prologue
    .line 668
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(J)Z

    move-result v0

    return v0
.end method

.method public static hasIccCardUsingSubId(J)Z
    .registers 6
    .param p0, "subId"    # J

    .prologue
    .line 679
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v0

    .line 680
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(J)Z

    move-result v1

    return v1
.end method

.method public static isEmergencyNumber(ILjava/lang/String;)Z
    .registers 8
    .param p0, "slotId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1931
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1933
    .local v1, "subId":[J
    const/4 v3, 0x0

    :try_start_6
    aget-wide v4, v1, v3

    invoke-static {v4, v5, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(JLjava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v2

    .line 1935
    :goto_c
    return v2

    .line 1934
    :catch_d
    move-exception v0

    .line 1935
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_c
.end method

.method public static isEnabledSim(Landroid/content/Context;I)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    const/4 v1, 0x1

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, "simActive":I
    if-ne v0, v1, :cond_11

    .line 264
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static isIdle(I)Z
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    .line 1674
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1676
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->isIdle(J)Z
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result v2

    .line 1678
    :goto_f
    return v2

    .line 1677
    :catch_10
    move-exception v0

    .line 1678
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x1

    goto :goto_f
.end method

.method public static isIdleUsingSubId(J)Z
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1690
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->isIdle(J)Z

    move-result v0

    return v0
.end method

.method public static isNetworkRoaming(I)Z
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 517
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 519
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 521
    :goto_10
    return v2

    .line 520
    :catch_11
    move-exception v0

    .line 521
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static isNetworkRoamingUsingSubId(J)Z
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 534
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z

    move-result v0

    return v0
.end method

.method public static isNoSIM()Z
    .registers 5

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_2
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 242
    const-string/jumbo v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "iccType":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 241
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 247
    .end local v1    # "iccType":Ljava/lang/String;
    :cond_1e
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ne v0, v3, :cond_26

    .line 248
    const/4 v3, 0x1

    .line 250
    :goto_25
    return v3

    :cond_26
    const/4 v3, 0x0

    goto :goto_25
.end method

.method public static isOffhook(I)Z
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1620
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1622
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->isOffhook(J)Z
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1624
    :goto_10
    return v2

    .line 1623
    :catch_11
    move-exception v0

    .line 1624
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static isOffhookUsingSubId(J)Z
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1636
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->isOffhook(J)Z

    move-result v0

    return v0
.end method

.method public static isRadioOn(I)Z
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1699
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1701
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->isRadioOn(J)Z
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1703
    :goto_10
    return v2

    .line 1702
    :catch_11
    move-exception v0

    .line 1703
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static isRadioOnUsingSubId(J)Z
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1714
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->isRadioOn(J)Z

    move-result v0

    return v0
.end method

.method public static isRinging(I)Z
    .registers 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1647
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1649
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->isRinging(J)Z
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1651
    :goto_10
    return v2

    .line 1650
    :catch_11
    move-exception v0

    .line 1651
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static isRingingUsingSubId(J)Z
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1664
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->isRinging(J)Z

    move-result v0

    return v0
.end method

.method public static isValidPhoneId(I)Z
    .registers 2
    .param p0, "phoneId"    # I

    .prologue
    .line 2346
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public static isValidSubId(J)Z
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 2339
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v0

    return v0
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    .line 2355
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2356
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;IJ)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # J

    .prologue
    .line 2365
    invoke-static {p0, p1, p2, p3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;IJ)V

    .line 2366
    return-void
.end method

.method public static setColor(II)I
    .registers 6
    .param p0, "color"    # I
    .param p1, "slotId"    # I

    .prologue
    .line 2048
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 2049
    .local v0, "subId":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {p0, v2, v3}, Landroid/telephony/SubscriptionManager;->setColor(IJ)I

    move-result v1

    return v1
.end method

.method public static setColorUsingSubId(IJ)I
    .registers 4
    .param p0, "color"    # I
    .param p1, "subId"    # J

    .prologue
    .line 2037
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->setColor(IJ)I

    move-result v0

    return v0
.end method

.method public static setDataEnabled(Z)V
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 1919
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1920
    return-void
.end method

.method public static setDataRoaming(II)I
    .registers 6
    .param p0, "roaming"    # I
    .param p1, "slotId"    # I

    .prologue
    .line 2187
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 2189
    .local v1, "subId":[J
    const/4 v2, 0x0

    :try_start_5
    aget-wide v2, v1, v2

    invoke-static {p0, v2, v3}, Landroid/telephony/SubscriptionManager;->setDataRoaming(IJ)I
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v2

    .line 2191
    :goto_b
    return v2

    .line 2190
    :catch_c
    move-exception v0

    .line 2191
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_b
.end method

.method public static setDataRoamingUsingSubId(IJ)I
    .registers 4
    .param p0, "roaming"    # I
    .param p1, "subId"    # J

    .prologue
    .line 2175
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->setDataRoaming(IJ)I

    move-result v0

    return v0
.end method

.method public static setDefaultSubId(IJ)V
    .registers 6
    .param p0, "type"    # I
    .param p1, "subId"    # J

    .prologue
    .line 2251
    packed-switch p0, :pswitch_data_28

    .line 2264
    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDefaultSubId] Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :goto_1b
    return-void

    .line 2254
    :pswitch_1c
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(J)V

    goto :goto_1b

    .line 2257
    :pswitch_20
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(J)V

    goto :goto_1b

    .line 2260
    :pswitch_24
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(J)V

    goto :goto_1b

    .line 2251
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method

.method public static setDisplayName(Ljava/lang/String;I)I
    .registers 6
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 2071
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 2073
    .local v1, "subId":[J
    const/4 v2, 0x0

    :try_start_5
    aget-wide v2, v1, v2

    invoke-static {p0, v2, v3}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;J)I
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v2

    .line 2075
    :goto_b
    return v2

    .line 2074
    :catch_c
    move-exception v0

    .line 2075
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_b
.end method

.method public static setDisplayName(Ljava/lang/String;IJ)I
    .registers 8
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "nameSource"    # J

    .prologue
    .line 2103
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 2105
    .local v1, "subId":[J
    const/4 v2, 0x0

    :try_start_5
    aget-wide v2, v1, v2

    invoke-static {p0, v2, v3, p2, p3}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;JJ)I
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v2

    .line 2107
    :goto_b
    return v2

    .line 2106
    :catch_c
    move-exception v0

    .line 2107
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_b
.end method

.method public static setDisplayNameUsingSubId(Ljava/lang/String;J)I
    .registers 4
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # J

    .prologue
    .line 2060
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static setDisplayNameUsingSubId(Ljava/lang/String;JJ)I
    .registers 6
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # J
    .param p3, "nameSource"    # J

    .prologue
    .line 2089
    invoke-static {p0, p1, p2, p3, p4}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;JJ)I

    move-result v0

    return v0
.end method

.method public static setDisplayNumber(Ljava/lang/String;I)I
    .registers 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 2131
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 2133
    .local v1, "subId":[J
    const/4 v2, 0x0

    :try_start_5
    aget-wide v2, v1, v2

    invoke-static {p0, v2, v3}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;J)I
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v2

    .line 2135
    :goto_b
    return v2

    .line 2134
    :catch_c
    move-exception v0

    .line 2135
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_b
.end method

.method public static setDisplayNumberFormat(II)I
    .registers 6
    .param p0, "format"    # I
    .param p1, "slotId"    # I

    .prologue
    .line 2159
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 2161
    .local v1, "subId":[J
    const/4 v2, 0x0

    :try_start_5
    aget-wide v2, v1, v2

    invoke-static {p0, v2, v3}, Landroid/telephony/SubscriptionManager;->setDisplayNumberFormat(IJ)I
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v2

    .line 2163
    :goto_b
    return v2

    .line 2162
    :catch_c
    move-exception v0

    .line 2163
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_b
.end method

.method public static setDisplayNumberFormatUsingSubId(IJ)I
    .registers 4
    .param p0, "format"    # I
    .param p1, "subId"    # J

    .prologue
    .line 2147
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->setDisplayNumberFormat(IJ)I

    move-result v0

    return v0
.end method

.method public static setDisplayNumberUsingSubId(Ljava/lang/String;J)I
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "subId"    # J

    .prologue
    .line 2119
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "slotId"    # I
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 873
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 875
    .local v0, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplayForSubscriber(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_f

    .line 878
    :goto_e
    return-void

    .line 876
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method public static setLine1NumberForDisplayUsingSubId(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "subId"    # J
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 896
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplayForSubscriber(JLjava/lang/String;Ljava/lang/String;)V

    .line 897
    return-void
.end method

.method public static setRadio(IZ)Z
    .registers 8
    .param p0, "slotId"    # I
    .param p1, "turnOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1897
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1899
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5, p1}, Landroid/telephony/TelephonyManager;->setRadio(JZ)Z
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1901
    :goto_10
    return v2

    .line 1900
    :catch_11
    move-exception v0

    .line 1901
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static setRadioUsingSubId(JZ)Z
    .registers 5
    .param p0, "subId"    # J
    .param p2, "turnOn"    # Z

    .prologue
    .line 1911
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager;->setRadio(JZ)Z

    move-result v0

    return v0
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1266
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1268
    .local v0, "subId":[J
    const/4 v1, 0x0

    :try_start_5
    aget-wide v2, v0, v1

    invoke-static {p0, v2, v3, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1271
    :goto_a
    return-void

    .line 1269
    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public static setTelephonyPropertyUsingSubId(Ljava/lang/String;JLjava/lang/String;)V
    .registers 5
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "subId"    # J
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1282
    invoke-static {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V

    .line 1283
    return-void
.end method

.method public static supplyPin(ILjava/lang/String;)Z
    .registers 8
    .param p0, "slotId"    # I
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1725
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1727
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5, p1}, Landroid/telephony/TelephonyManager;->supplyPin(JLjava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1729
    :goto_10
    return v2

    .line 1728
    :catch_11
    move-exception v0

    .line 1729
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static supplyPinReportResult(ILjava/lang/String;)[I
    .registers 9
    .param p0, "slotId"    # I
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1784
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1786
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5, p1}, Landroid/telephony/TelephonyManager;->supplyPinReportResult(JLjava/lang/String;)[I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result-object v2

    .line 1788
    :goto_10
    return-object v2

    .line 1787
    :catch_11
    move-exception v0

    .line 1788
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-array v2, v6, [I

    goto :goto_10
.end method

.method public static supplyPinReportResultUsingSubId(JLjava/lang/String;)[I
    .registers 5
    .param p0, "subId"    # J
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1802
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPinReportResult(JLjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static supplyPinUsingSubId(JLjava/lang/String;)Z
    .registers 5
    .param p0, "subId"    # J
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1742
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPin(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supplyPuk(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "slotId"    # I
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1754
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1756
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPuk(JLjava/lang/String;Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result v2

    .line 1758
    :goto_10
    return v2

    .line 1757
    :catch_11
    move-exception v0

    .line 1758
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public static supplyPukReportResult(ILjava/lang/String;Ljava/lang/String;)[I
    .registers 10
    .param p0, "slotId"    # I
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1816
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1818
    .local v1, "subId":[J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPukReportResult(JLjava/lang/String;Ljava/lang/String;)[I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_11

    move-result-object v2

    .line 1820
    :goto_10
    return-object v2

    .line 1819
    :catch_11
    move-exception v0

    .line 1820
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-array v2, v6, [I

    goto :goto_10
.end method

.method public static supplyPukReportResultUsingSubId(JLjava/lang/String;Ljava/lang/String;)[I
    .registers 6
    .param p0, "subId"    # J
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 1836
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->supplyPukReportResult(JLjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static supplyPukUsingSubId(JLjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "subId"    # J
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 1772
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->supplyPuk(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static toggleRadioOnOff(I)V
    .registers 5
    .param p0, "slotId"    # I

    .prologue
    .line 1875
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1877
    .local v0, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->toggleRadioOnOff(J)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_f

    .line 1880
    :goto_e
    return-void

    .line 1878
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method public static toggleRadioOnOffUsingSubId(J)V
    .registers 4
    .param p0, "subId"    # J

    .prologue
    .line 1888
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->toggleRadioOnOff(J)V

    .line 1889
    return-void
.end method


# virtual methods
.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .registers 8
    .param p1, "slotId"    # I

    .prologue
    .line 1022
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1024
    .local v1, "subId":[J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber(J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v2

    .line 1026
    :goto_f
    return-object v2

    .line 1025
    :catch_10
    move-exception v0

    .line 1026
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public getCompleteVoiceMailNumberUsingSubId(J)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # J

    .prologue
    .line 1041
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
