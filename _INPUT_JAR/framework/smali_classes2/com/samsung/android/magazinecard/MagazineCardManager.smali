.class public Lcom/samsung/android/magazinecard/MagazineCardManager;
.super Ljava/lang/Object;
.source "MagazineCardManager.java"


# static fields
.field private static KNOX_APP_PACKAGE_NAME_PREFIX:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentUserID:I


# instance fields
.field private mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-string v0, "MagazineCardManager"

    sput-object v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "sec_container_"

    sput-object v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->KNOX_APP_PACKAGE_NAME_PREFIX:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;

    .line 67
    sget-object v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string v1, "MagazineCardManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sput-object p1, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    .line 70
    sget-object v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    .line 72
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 104
    if-nez p1, :cond_8

    .line 105
    sget-object v1, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 108
    :cond_8
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_17

    .line 110
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 112
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz p1, :cond_b

    .line 95
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    const-string v1, ""

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .restart local v0    # "component":Landroid/content/ComponentName;
    :goto_a
    return-object v0

    .line 97
    :cond_b
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    sget-object v1, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v0    # "component":Landroid/content/ComponentName;
    goto :goto_a
.end method

.method private declared-synchronized getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;
    .registers 3

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;

    if-nez v0, :cond_1c

    .line 76
    const-string v0, "magazinecardservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;

    if-nez v0, :cond_1c

    .line 78
    sget-object v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string v1, "getService : Could not get the service!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    .line 75
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isKnoxApp()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 121
    sget-object v2, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_12

    sget-object v2, Lcom/samsung/android/magazinecard/MagazineCardManager;->KNOX_APP_PACKAGE_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_12

    .line 125
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private setTimeStamp(Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    .registers 6
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    .line 86
    iget-wide v0, p1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mTimeStamp:J

    .line 89
    :cond_e
    return-void
.end method


# virtual methods
.method public addCard(Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z
    .registers 10
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 131
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v7}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isKnoxApp()Z

    move-result v4

    if-ne v4, v3, :cond_45

    .line 135
    sget-object v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string v4, "addCard : KNOX application cannot use magazine card service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v3, 0x0

    .line 153
    :cond_44
    :goto_44
    return v3

    .line 140
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 141
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_44

    .line 142
    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->setTimeStamp(Lcom/samsung/android/magazinecard/MagazineCardInfo;)V

    .line 144
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 146
    .local v0, "component":Landroid/content/ComponentName;
    sget v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    iput v4, p1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    .line 147
    sget v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-interface {v2, v4, v0, p1}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->addCard(ILandroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_5c} :catch_5d

    goto :goto_44

    .line 149
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_5d
    move-exception v1

    .line 151
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getCard(I)Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .registers 8
    .param p1, "cardRecordId"    # I

    .prologue
    const/4 v2, 0x0

    .line 298
    :try_start_1
    sget-object v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v1

    .line 300
    .local v1, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v1, :cond_32

    .line 301
    invoke-interface {v1, p1}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->getCard(I)Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_31} :catch_33

    move-result-object v2

    .line 307
    :cond_32
    return-object v2

    .line 303
    .end local v1    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_33
    move-exception v0

    .line 305
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCardRecordIdList(IZ)[I
    .registers 9
    .param p1, "userId"    # I
    .param p2, "securityMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 280
    sget-object v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCardRecordIdList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " U"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ReqU"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SM:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :try_start_3d
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v1

    .line 283
    .local v1, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v1, :cond_47

    .line 284
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->getCardRecordIdList(IZ)[I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_46} :catch_48

    move-result-object v2

    .line 290
    :cond_47
    return-object v2

    .line 286
    .end local v1    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_48
    move-exception v0

    .line 288
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isCardExist(I)Z
    .registers 3
    .param p1, "cardId"    # I

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isCardExist(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isCardExist(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cardId"    # I

    .prologue
    const/4 v3, 0x0

    .line 251
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCardExist : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isKnoxApp()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_42

    .line 255
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string v5, "isCardExist : KNOX application cannot use magazine card service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_41
    :goto_41
    return v3

    .line 261
    :cond_42
    :try_start_42
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 262
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_41

    .line 263
    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 264
    .local v0, "component":Landroid/content/ComponentName;
    sget v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-interface {v2, v3, v0, p2}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->isCardExist(ILandroid/content/ComponentName;I)Z
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_51} :catch_53

    move-result v3

    goto :goto_41

    .line 266
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_53
    move-exception v1

    .line 268
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isServiceEnabled()Z
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isKnoxApp()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public removeAllCard()Z
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->removeAllCard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAllCard(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 218
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeAllCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isKnoxApp()Z

    move-result v4

    if-ne v4, v3, :cond_3a

    .line 222
    sget-object v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeAllCard : KNOX application cannot use magazine card service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v3, 0x0

    .line 243
    :cond_39
    :goto_39
    return v3

    .line 227
    :cond_3a
    :try_start_3a
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 228
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_39

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz p1, :cond_57

    .line 232
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    const-string v4, ""

    invoke-direct {v0, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .restart local v0    # "component":Landroid/content/ComponentName;
    :goto_4a
    sget v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-interface {v2, v4, v0}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->removeAllCard(ILandroid/content/ComponentName;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4f} :catch_50

    goto :goto_39

    .line 238
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_50
    move-exception v1

    .line 240
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 234
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "component":Landroid/content/ComponentName;
    .restart local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :cond_57
    :try_start_57
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    const-string v5, ""

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_60} :catch_50

    .restart local v0    # "component":Landroid/content/ComponentName;
    goto :goto_4a
.end method

.method public removeCard(I)Z
    .registers 3
    .param p1, "cardId"    # I

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->removeCard(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public removeCard(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cardId"    # I

    .prologue
    const/4 v3, 0x1

    .line 191
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isKnoxApp()Z

    move-result v4

    if-ne v4, v3, :cond_44

    .line 195
    sget-object v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeCard : KNOX application cannot use magazine card service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v3, 0x0

    .line 210
    :cond_43
    :goto_43
    return v3

    .line 200
    :cond_44
    :try_start_44
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 201
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_43

    .line 202
    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 203
    .local v0, "component":Landroid/content/ComponentName;
    sget v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-interface {v2, v4, v0, p2}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->removeCard(ILandroid/content/ComponentName;I)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_53} :catch_54

    goto :goto_43

    .line 205
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_54
    move-exception v1

    .line 207
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCard(Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z
    .registers 3
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->updateCard(Ljava/lang/String;Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z

    move-result v0

    return v0
.end method

.method public updateCard(Ljava/lang/String;Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    const/4 v3, 0x1

    .line 162
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isKnoxApp()Z

    move-result v4

    if-ne v4, v3, :cond_46

    .line 166
    sget-object v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateCard : KNOX application cannot use magazine card service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v3, 0x0

    .line 183
    :cond_45
    :goto_45
    return v3

    .line 172
    :cond_46
    :try_start_46
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 173
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_45

    .line 174
    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 176
    .local v0, "component":Landroid/content/ComponentName;
    sget v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    iput v4, p2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    .line 177
    sget v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-interface {v2, v4, v0, p2}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->updateCard(ILandroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_59} :catch_5a

    goto :goto_45

    .line 179
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_5a
    move-exception v1

    .line 181
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
